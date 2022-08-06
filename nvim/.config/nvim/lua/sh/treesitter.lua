local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {"lua", "python",},
  sync_install = false,
  -- Automatically install missing parsers when entering buffer
  auto_install = false,
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighting = false,

  },
  indent = { enable = true },
}
