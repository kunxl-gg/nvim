return {
    "jose-elias-alvarez/null-ls.nvim",
    event = "VeryLazy",
    opts = function()

        -- null-ls setup
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.clang_format
            }
        })

        -- format on save
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        require("null-ls").setup({
            -- you can reuse a shared lspconfig on_attach callback here
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                            -- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
                            vim.lsp.buf.formatting_sync()
                        end,
                    })
                end
            end,
        })

    end
}
