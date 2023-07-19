return {
  {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  },
  {
    "ThePrimeagen/harpoon",
    requires = {
      { "nvim-lua/plenary.nvim" },
    },
    opts = function()
      require("telescope").load_extension("harpoon")
    end,
  },
  {
    "HiPhish/nvim-ts-rainbow2",
  },
  { "akinsho/toggleterm.nvim", version = "*", opts = {} },
  {
    "zane-/cder.nvim",
    opts = function()
      require("telescope").load_extension("cder")
    end,
  },
  {
    "stevearc/aerial.nvim",
    opts = function()
      require("telescope").load_extension("aerial")
    end,
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
  },
}
