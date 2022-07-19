-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.

vim.o.shell="/usr/bin/fish"
vim.opt.relativenumber = true


--Keybindings
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n',"<leader>cd",":Telescope cder<CR>")
map('n',"<leader>,",":cd ~/.config/nvim/lua<CR>")
