-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--Keybindings
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader>,", "<cmd>cd ~/.config/nvim/lua<CR>")
map("n", ";;", "A;<Esc>")
map("n", "<leader>fx", "<cmd> !chmod +x %<CR>")
map("n", "<leader>so", "<cmd> so %<CR>")
map("n", "<C-n>", "<cmd>Neotree toggle<CR>")
map("i", "<C-n>", "<cmd>Neotree toggle<CR>")
map("t", "<C-n>", "<cmd>Neotree toggle<CR>")
map("n", "<A-h>", "<cmd>ToggleTerm<CR>")
map("t", "<A-h>", "<cmd>ToggleTerm<CR>")

-- Telescope shortcuts
map("n", "<leader>cd", "<cmd> Telescope cder<CR>")
map("n", "<leader>j", "<cmd> Telescope aerial<CR>")
map("n", "<leader>fr", "<cmd> Telescope frecency<CR>")

-- Harpoon shortcuts
map("n", "<leader>a", '<cmd>lua require("harpoon.mark").add_file()<CR>')
map("n", "<leader>g", "<cmd>Telescope harpoon marks<CR>")

-- Git shortcuts
map("n", "<leader>ga", "<cmd> G add %<CR>")
map("n", "<leader>gaa", "<cmd> G add -u<CR>")
map("n", "<leader>gA", "<cmd> G add .<CR>")
map("n", "<leader>gc", ":G commit ")

-- Trouble.nvim
map("n", "<leader>tx ", "<cmd> TroubleToggle<CR>")
map("n", "<leader>tw ", "<cmd> TroubleToggle workspace_diagnostics<CR>")
map("n", "<leader>td ", "<cmd> TroubleToggle document_diagnostics<CR>")
map("n", "<leader>tq ", "<cmd> TroubleToggle quickfix<CR>")
map("n", "<leader>tl ", "<cmd> TroubleToggle loclist<CR>")
map("n", "gr", "<cmd> TroubleToggle lsp_references<CR>")

-- Symbols def
-- map("n","<leader>d","<cmd> SymbolsOutline<CR>")
require("config.keymaps.refactor")
