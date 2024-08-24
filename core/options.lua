local opt = vim.opt

-- line number config
opt.relativenumber = true
opt.number = true

-- indent config
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- cursor config
opt.cursorline = true

-- enable mouse
opt.mouse:append("a")

-- system clipboard
opt.clipboard:append("unnamedplus")

-- appearance
opt.termguicolors = true
opt.signcolumn = "yes"

