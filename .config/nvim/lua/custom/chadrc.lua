-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.plugins = {
  user = {
     ["zane-/cder.nvim"]={},
     ["p00f/nvim-ts-rainbow"] = {},
     ["tpope/vim-fugitive"] = {},
  },

  override = {
   ["nvim-telescope/telescope.nvim"] = {
     extensions_list = { "themes", "terms", "cder" },
   },
   ["nvim-treesitter/nvim-treesitter"] = {
      rainbow = {
         enable = true,
         extended_mode = true,
         max_file_lines = nil,
      }
   },
  }
}

M.ui = {
   theme = "tokyonight",
}

return M
