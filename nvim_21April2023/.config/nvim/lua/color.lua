vim.g.everforest_diagnostic_line_highlight = 1
vim.cmd('colorscheme everforest')
--vim.cmd('colorscheme porcelain')

-- we're setting this in module/lsp.lua
--[[
vim.fn.sign_define({
  {
    name = 'DiagnosticSignError',
    text = 'E',
    texthl = 'DiagnosticSignError',
    linehl = 'ErrorLine',
  },

  {
    name = 'DiagnosticSignInfo',
    text = 'I',
    texthl = 'DiagnosticSignInfo',
    linehl = 'InfoLine',
  },
  {
    name = 'DiagnosticSignWarn',
    text = 'W',
    texthl = 'DiagnosticSignWarn',
    linehl = 'WarningLine',
  },
  {
    name = 'DiagnosticSignHint',
    text = 'H',
    texthl = 'DiagnosticSignHint',
    linehl = 'HintLine',
  }
})

--]]
