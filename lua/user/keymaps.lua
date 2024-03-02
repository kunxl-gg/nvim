-- Defining the local variables
local keymap = vim.keymap

-- Normal Mode Commands 
keymap.set("n", "U", "<C-r>", { noremap = true })
keymap.set("n", "H", "^", { noremap = true })
keymap.set("n", "L", "$", { noremap = true })

-- Insert Mode Commands
keymap.set('i', 'jj', '<Esc>', { noremap = true })

-- Center the buffer while navigating
keymap.set("n", "UU", "<C-u>zz")
keymap.set("n", "DD", "<C-d>zz")
keymap.set("n", "%", "%zz")
keymap.set("n", "n", "nzz")
keymap.set("n", "N", "Nzz")
keymap.set("n", "%", "%zz")
keymap.set("n", "*", "*zz")
keymap.set("n", "#", "#zz")

-- Manage Buffers
keymap.set("n", "<leader>bp", ":bp<CR>", { noremap = true })
keymap.set("n", "<leader>bn", ":bn<CR>", { noremap = true })
keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true })

-- Splitting the windows
keymap.set("n", "<leader>vs", ":vsplit<CR>", { noremap = true })
keymap.set("n", "<leader>hs", ":split<CR>", { noremap = true })

-- Indenting the code
keymap.set("v", "<Tab>", ":> | normal gv<CR>", { noremap = true })
keymap.set("v", "<S-Tab>", ":< | normal gv<CR>", { noremap = true })
