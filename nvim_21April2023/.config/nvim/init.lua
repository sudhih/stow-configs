-- TODO: write code that installs 'packer.nvim' automatically
require('globals')
require('base')
require('mappings')
require('plugins')
require('p-mason')
--require('p-lsp')
require('module.lsp')
require('p-tree')
require('color')
require('text')
require('p-lualine')
--
-- TODO: when whiskyline status works, move this to a separate file
--require('gitsigns').setup()
--
--require('p-whiskyline')
require('p-telescope')
require('p-bookmark')
require('p-lspkind')
--require('p-cmp')
require('p-zknvim')

-- vim.cmd([[packadd  '~/git-repos/plugins/cyclist.vim']])
-- <Cmd>exe Plug "~/git-repos/plugins/cyclist.vim"<cr>

vim.keymap.set({ 'n', 'i', 'v' }, 'fj', '<esc>', { silent = true })
