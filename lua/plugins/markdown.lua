return {
	"iamcco/markdown-preview.nvim",
	ft = "markdown",
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	cmd = {
		"MarkdownPreviewToggle",
		"MarkdownPreview",
		"MarkdownPreviewStop",
	},
    config = function()
        local keymap = vim.keymap

        keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>")
    end
}
