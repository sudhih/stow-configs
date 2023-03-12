vim.g.mapleader = ','
local keymap = vim.keymap.set

keymap({ 'n', 'i', 'v' }, '<leader>e', '<esc>')
keymap({ 'n', 'i', 'v' }, 'fj', '<esc>')
keymap({ 'n', 'i', 'v' }, '<leader>w', '<cmd>w<cr>')
keymap({ 'n', 'i', 'v' }, '<leader>q', '<cmd>q<cr>')
keymap({ 'n', 'i', 'v' }, '<leader>x', '<cmd>x<cr>')

-- select all
keymap('n', '<c-a>', 'gg<S-v>G')

-- navigate between window splits
keymap('n', '<c-l>', '<c-w>l')
keymap('n', '<c-h>', '<c-w>h')
keymap('n', '<c-j>', '<c-w>j')
keymap('n', '<c-k>', '<c-w>k')
