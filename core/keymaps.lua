vim.g.mapleader = " "

local keymap = vim.keymap

-- Operations of the inserting mode
keymap.set("i", "jk", "<ESC>")

-- Operations of the visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cancel high light
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- help
keymap.set("n", "<leader>ic", ":help ins-completion<CR>")

-- No need, if i forgot this
-- keymap.set("n", "<leader>bd", "<CMD>bd<CR>")
