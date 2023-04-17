local builtin = require("telescope.builtin")
local keymap = vim.keymap.set

keymap('n', '<leader>ff', builtin.find_files, {})
keymap('n', '<leader>fg', builtin.live_grep, {})
keymap('n', '<leader>fb', builtin.buffers, {})
keymap('n', '<leader>fh', builtin.help_tags, {})

require('nvim-web-devicons').setup({
  override = {},
  defautl = true
})

local actions = require('telescope.actions')
require('telescope').setup({
  defaults = {
    path_display = { 'smart' },
    mappings = {
      i = {
        ["qq"] = actions.close,
      }
    }
  },
  layout_config = {
    horizontal = {
      preview_cutoff = 100,
      preview_width = 0.6,
    }
  }
})
