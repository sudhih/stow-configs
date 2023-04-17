local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

local utf8 = 'utf-8'
vim.scriptencoding = utf8
opt.encoding = utf8
opt.fileencoding = utf8

opt.scrolloff = 5
opt.sidescrolloff = 5

opt.hlsearch = true
opt.incsearch = true

opt.mouse = 'a'
-- opt.clipboard:append('unnamedplus')

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.ignorecase = true
opt.smartcase = true

opt.signcolumn = 'yes'
opt.list = true
opt.cursorline = true

opt.termguicolors = true

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 300,
    })
  end
})
