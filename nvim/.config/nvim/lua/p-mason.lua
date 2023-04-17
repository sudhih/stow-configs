require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'lua_ls',
    'pyright',
  },
  automatic_installation = true,
})
