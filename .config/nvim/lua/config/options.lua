-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

--IDE settings
vim.o.guifont = "JetBrainsMono Nerd Font:h14"
vim.o.shell = "/usr/bin/fish"
vim.g.mapleader = " "

-- code folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.cmd("autocmd BufReadPost,FileReadPost * normal zR")
