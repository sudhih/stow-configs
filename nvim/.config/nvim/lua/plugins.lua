vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    tag = 'nightly',
    -- TODO:  we don't want this plugin to load at initialization
    keys = [[<space>e]],
  }

  -- colorschemes
  use 'sainnhe/everforest'
  use 'folke/tokyonight.nvim'
  use {
    'glepnir/porcelain.nvim',
    -- requires = { 'glepnir/gitsigns' }
  }

  use 'rmagatti/alternate-toggler'
  use 'windwp/nvim-autopairs'
  use 'mg979/vim-visual-multi'
  use 'gcmt/wildfire.vim'
  use 'tpope/vim-surround'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani532/nvim-web-devicons', opt = true }
  }

  --[[
  use {
    'glepnir/whiskyline.nvim',
    --  requires = { { 'glepnir/gitsigns.nvim' } },
    --   branch = 'patch_2'
  }
  --]]
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'MattesGroeger/vim-bookmarks'
  use 'tom-anders/telescope-vim-bookmarks.nvim'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'onsails/lspkind-nvim'

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- zettelkasten
  use 'mickael-menu/zk-nvim'

  -- automatically highlight other uses of word under the cursor
  use 'RRethy/vim-illuminate'

  -- TODO: get rid of this plugin after you tune the startup
  use {
    'dstein64/vim-startuptime',
    cmd = 'StartupTime',
  }
end)
