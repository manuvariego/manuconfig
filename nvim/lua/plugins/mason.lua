return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim"
    },
    config = function()
      require("mason").setup({})
      require("mason-lspconfig").setup({
        ensure_installed = {
          "rust_analyzer",
          "tsserver",
          "html",
          "cssls",
          "tailwindcss",
          "lua_ls",
        }
      })
    end
  },


}
