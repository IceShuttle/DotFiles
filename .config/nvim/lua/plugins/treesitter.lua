return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      rainbow = {
        enable = true,
      },
      ensure_installed = { "nix", "bash", "html", "javascript", "python", "typescript", "yaml", "css", "rust", "fish" },
    },
  },
}
