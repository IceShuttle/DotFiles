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

map("n", "<leader>,", "<cmd> cd ~/.config/nvim/lua<CR>")
map("n", "<leader>i", "i r")
map("n", "<leader>I", "I r")
map("n", "<leader>a", "a r")
map("n", "<leader>A", "A r")
map("n", ";;", "A;<Esc>")
map("n", "<leader>fx", "<cmd> !chmod +x %<CR>")
map("n", "<leader>so", "<cmd> so %<CR>")

-- Telescope shortcuts
map("n", "<leader>cd", "<cmd> Telescope cder<CR>")
map("n", "<leader>j", "<cmd> Telescope aerial<CR>")
map("n", "<leader>fr", "<cmd> Telescope frecency<CR>")

-- Git shortcuts
map("n", "<leader>ga", "<cmd> G add %<CR>")
map("n", "<leader>gaa", "<cmd> G add -u<CR>")
map("n", "<leader>gA", "<cmd> G add .<CR>")
map("n", "<leader>gc", ":G commit ")
map("n", "<leader>g", "<cmd> Neogit<CR>")

-- Trouble.nvim
map("n", "<leader>tx ", "<cmd> TroubleToggle<CR>")
map("n", "<leader>tw ", "<cmd> TroubleToggle workspace_diagnostics<CR>")
map("n", "<leader>td ", "<cmd> TroubleToggle document_diagnostics<CR>")
map("n", "<leader>tq ", "<cmd> TroubleToggle quickfix<CR>")
map("n", "<leader>tl ", "<cmd> TroubleToggle loclist<CR>")
map("n", "gr", "<cmd> TroubleToggle lsp_references<CR>")

-- Symbols def
-- map("n","<leader>d","<cmd> SymbolsOutline<CR>")

-- Refactor.nvim
-- Remaps for the refactoring operations currently offered by the plugin
vim.api.nvim_set_keymap(
  "v",
  "<leader>re",
  [[ <Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],
  { noremap = true, silent = true, expr = false }
)
vim.api.nvim_set_keymap(
  "v",
  "<leader>rf",
  [[ <Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]],
  { noremap = true, silent = true, expr = false }
)
vim.api.nvim_set_keymap(
  "v",
  "<leader>rv",
  [[ <Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]],
  { noremap = true, silent = true, expr = false }
)
vim.api.nvim_set_keymap(
  "v",
  "<leader>ri",
  [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
  { noremap = true, silent = true, expr = false }
)

-- Extract block doesn't need visual mode
vim.api.nvim_set_keymap(
  "n",
  "<leader>rb",
  [[ <Cmd>lua require('refactoring').refactor('Extract Block')<CR>]],
  { noremap = true, silent = true, expr = false }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>rbf",
  [[ <Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>]],
  { noremap = true, silent = true, expr = false }
)

-- Inline variable can also pick up the identifier currently under the cursor without visual mode
vim.api.nvim_set_keymap(
  "n",
  "<leader>ri",
  [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
  { noremap = true, silent = true, expr = false }
)
vim.api.nvim_set_keymap(
  "v",
  "<leader>rr",
  "<cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
  { noremap = true }
)
