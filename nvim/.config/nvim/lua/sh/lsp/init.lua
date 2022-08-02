-- load 'nvim-lspconfig' package
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("sh.lsp.lsp-installer")
require("sh.lsp.handlers").setup()
