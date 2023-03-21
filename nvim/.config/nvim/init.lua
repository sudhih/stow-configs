-- TODO: write code that installs 'packer.nvim' automatically
require('base')
require('mappings')
require('plugins')
require('p-mason')
require('p-lsp')
require('p-tree')
require('color')
require('text')
require('p-lualine')
--
-- TODO: when whiskyline status works, move this to a separate file
require('gitsigns').setup()
--
require('p-whiskyline')
require('p-telescope')
require('p-bookmark')
require('p-lspkind')
require('p-cmp')
require('p-zknvim')


vim.keymap.set({ 'n', 'i', 'v' }, 'fj', '<esc>', { silent = true })
