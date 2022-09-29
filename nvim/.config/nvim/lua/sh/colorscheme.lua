-- example configuration from https://github.com/folke/tokyonight.nvim#%EF%B8%8F-configuration
-- other possible values for 'tokyonight_style' is day, night & storm
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_style = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

local colorscheme = "tokyonight"

local status_ok, _ = pcall(vim.cmd, "colorscheme "..colorscheme)
if not status_ok then
  vim.notify("colorscheme "..colorscheme.." not found!")
  return
end
