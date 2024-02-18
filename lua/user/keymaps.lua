-- Defining the local variables
local map = vim.api.nvim_set_keymap

-- Normal Mode Commands 
map("n", "U", "<C-r>", { noremap = true })
map("n", "H", "^", { noremap = true })
map("n", "L", "$", { noremap = true })

-- Insert Mode Commands
map('i', 'jj', '<Esc>', { noremap = true })

-- Import Telescope and its builtin module
