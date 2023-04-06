vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ({ 'rose-pine/neovim', as = 'rose-pine'})

	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate' })
	use ('nvim-treesitter/playground')

	use('theprimeagen/harpoon')
	use('mbbill/undotree')

end)
