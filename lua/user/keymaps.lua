-- Defining the local variables
local keymap = vim.keymap

-- Normal Mode Commands
keymap.set("n", "R", "<C-r>", { noremap = true })
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
keymap.set("n", "*", "*zz")
keymap.set("n", "#", "#zz")

-- Manage Buffers
keymap.set("n", "<leader>bp", ":bp<CR>", { noremap = true })
keymap.set("n", "<leader>bn", ":bn<CR>", { noremap = true })
keymap.set("n", "<leader>bd", ":bdelete<CR>", { noremap = true })
keymap.set("n", "<leader>bl", ":ls<CR>", { noremap = true })

-- Splitting the windows
keymap.set("n", "<leader>vs", ":vsplit<CR>", { noremap = true })
keymap.set("n", "<leader>hs", ":split<CR>", { noremap = true })

-- Indenting the code
keymap.set("v", "<Tab>", ":> | normal gv<CR>", { noremap = true })
keymap.set("v", "<S-Tab>", ":< | normal gv<CR>", { noremap = true })

-- Search and Replace
local function search()
    -- prompt the user to input the search pattern
    local search_pattern = vim.fn.input("Search For: ")
    -- prompt the user to input the replacement string
    local replace_string = vim.fn.input("Replace With: ")
    -- execute the  -- wrap the search pattern with \< and \> to match whole words only
    search_pattern = "\\<" .. vim.fn.escape(search_pattern, "\\") .. "\\>"
    -- execute the substitution command
    vim.cmd(string.format("%%s/%s/%s/g", search_pattern, replace_string))
end

local function search_under_cursor()
    --- get the word under the cursor
    local search_pattern = vim.fn.expand("<cword>")
    -- prompt the user to input the replacement string
    local replace_string = vim.fn.input("Replace With: ", search_pattern)
    -- execute the  -- wrap the search pattern with \< and \> to match whole words only
    search_pattern = "\\<" .. vim.fn.escape(search_pattern, "\\") .. "\\>"
    -- execute the substitution command
    vim.cmd(string.format("%%s/%s/%s/g", search_pattern, replace_string))
end

keymap.set("n", "<leader>ss", search, { noremap = true })
keymap.set("n", "<leader>s*", search_under_cursor, { noremap = true })
