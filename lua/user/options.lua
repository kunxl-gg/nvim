-- Enable relative line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- Set the number of spaces by tab to be 2 
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Set the global leader key
vim.g.mapleader = " "
vim.g.localmapleder = " "

-- Syncing the OS clipboard and neovim clipboard
vim.o.clipboard = 'unnamed,unnamedplus'

-- Configuring Horinzontal and Vertical Split
vim.opt.splitright = true
vim.opt.splitbelow = false

-- Enable mouse mode
vim.opt.mouse = "a"

-- Enable signcolumn
vim.opt.signcolumn = "yes"

-- Enable scrolloff
vim.opt.scrolloff = 8

-- Defining column width for current buffer
vim.opt.colorcolumn = "80"

-- Enable cursorline
vim.opt.cursorline = true

-- Enable ignorecase + smartcase for better searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable incremental searching
vim.opt.incsearch = true
vim.opt.hlsearch = true
