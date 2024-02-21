return {
    'stevearc/dressing.nvim',
    lazy = "VeryLazy",
    config = function ()
        require("dressing").setup()
    end
}
