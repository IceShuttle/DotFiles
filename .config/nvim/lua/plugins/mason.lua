return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "pyright",
        "shfmt",
        "stylua",
      },
    },
  },
}
