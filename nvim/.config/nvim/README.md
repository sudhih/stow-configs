# Install latest, stable Neovim


## Backup existing configuration, if any
`mv .local/share/nvim .local/share/nvim_tmp`
`mv .config/nvim .config/nvim_tmp`


## Uninstall existing
`sudo apt-get purge neovim`


## Download & Install latest, stable version from github
* Find & Download Debian package from here: https://github.com/neovim/neovim/release/tag/stable
* `sudo apt install ./nvim-linux64.deb`


# Setup


* `mkdir -p .config/nvim; cd .config/nvim`
* `nvim init.lua`. (we'll set some options here, such as number, relative-number etc)
* Install packer.nvim: `git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/start/packer.nvim`
	* We'll create a separate file where we manage all packages to be installed.
	* `packer` will manage itself
	* `mkdir lua; nvim plugins.lua`

