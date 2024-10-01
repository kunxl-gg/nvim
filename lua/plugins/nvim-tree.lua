return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require("nvim-tree")

    -- Setting keymaps
    local keymap = vim.keymap
    keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
    keymap.set("n", "<leader>o", "<cmd>wincmd w<CR>")

    -- Configuration
    nvimtree.setup({
        view = {
            relativenumber = true,
        },
    })
  end
}
