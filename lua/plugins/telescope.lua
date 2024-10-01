return {
    "nvim-telescope/telescope.nvim",
    tag = '0.1.5',
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        -- Setup
        require("telescope").setup()

        -- Keymaps
        local keymap = vim.keymap
        local builtin = require("telescope.builtin")

        keymap.set("n", "<leader>ff", builtin.find_files)
        keymap.set("n", "<leader>fg", builtin.live_grep)
    end
}

