local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data').. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing 'packer'. Close & repon Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
print "status_ok is : "
if not staxtus_ok then
    return 
end

-- Have packer use a popup window
packer.init{
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Intall your plugins here
return packer.startup(function(use)
    -- my plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- useful lua functions used by lots of plugins

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end ofter all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
