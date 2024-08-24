vim.g.mapleader = " "

local keymap = vim.keymap

-- Operations of the inserting mode
keymap.set("i", "jk", "<ESC>")

-- Operations of the visual mode
-- ...

-- Cancel high light
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- Plugin
-- nvim-tree
-- keymap.set("n", "<leader>ee", ":NvimTreeToggle<CR>") -- toggle the nvim-tree view
-- keymap.set("n", "<leader>ef", ":NvimTreeFindFileToggle<CR>") -- toggle the nvim-tree view
-- keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>") -- toggle the nvim-tree view
-- keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>") -- toggle the nvim-tree view

-- help
keymap.set("n", "<leader>ic", ":help ins-completion<CR>")
