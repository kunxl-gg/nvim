return {
		"lewis6991/gitsigns.nvim",
		event = "VeryLazy",
		config = function()
			require("gitsigns").setup()

            -- Keymap for Gitsigns
            vim.keymap.set("n", "<leader>hp", ":Gitsigns preview_hunk_inline<CR>", {})
            vim.keymap.set("n", "<leader>sh", ":Gitsigns stage_hunk<CR>", {})
            vim.keymap.set("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", {})
		end,

}

