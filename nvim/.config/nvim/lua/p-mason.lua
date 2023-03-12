require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'sumneko_lua',
    'pyright'
  },
  automatic_installation = true,
})
