require('lualine').setup({
  sections = {
    lualine_a = { 'mode' },
    -- show only filename, not the absolute path
    lualine_b = { { 'filename', path = 0 } },
    lualine_c = { 'diagnostics' },
    lualine_x = {},
    lualine_y = { 'location' },
    lualine_z = { 'filetype' }
  }
})
