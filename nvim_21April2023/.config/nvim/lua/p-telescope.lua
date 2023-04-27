local builtin = require("telescope.builtin")
local keymap = vim.keymap.set

keymap('n', '<space>f', builtin.find_files, {})
keymap('n', '<space>g', builtin.live_grep, {})
keymap('n', '<space>b', builtin.buffers, {})
keymap('n', '<space>h', builtin.help_tags, {})

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
