local keymap = vim.keymap.set

keymap('n', '<space>ta', '<cmd>ToggleAlternate<cr>')
require('nvim-autopairs').setup({
	disable_filetype = { 'TelescopePrompt', 'vim' }
})
