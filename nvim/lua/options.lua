require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.tabstop = 2
opt.expandtab = true
opt.autoindent = true


require("oil").setup()
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
