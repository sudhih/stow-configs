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

-- Apparently when `set clipboard=unnamedplus` $VIMRUNTIME/autload/provider/clipboard.vim script will be sourced see below
-- https://github.com/neovim/neovim/issues/9570#issuecomment-459725522
-- This script will tries to lookup system clipboard by calling `system()` which is slow.
-- Hence set clipboard executables exclusively, which is obvious, to overcome slowness. Read here:
-- https://www.reddit.com/r/neovim/comments/ab01n8/improve_neovim_startup_by_60ms_for_free_on_macos/
if vim.fn.has('wsl') == 1 then
 vim.cmd [[
    let g:clipboard = {
        \   'name': 'WslClipboard',
        \   'copy': {
        \      '+': 'clip.exe',
        \      '*': 'clip.exe',
        \    },
        \   'paste': {
        \      '+': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        \      '*': 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        \   },
        \   'cache_enabled': 0,
        \ }
  ]]
elseif vim.fn.has('mac') == 1 then
  vim.cmd [[
    let g:clipboard = {
        \ 'name': 'pbcopy',
        \ 'copy': {
        \    '+': 'pbcopy',
        \    '*': 'pbcopy',
        \  },
        \ 'paste': {
        \    '+': 'pbpaste',
        \    '*': 'pbpaste',
        \ },
        \ 'cache_enabled': 0,
        \ }
  ]]
end
opt.clipboard:append('unnamedplus')
