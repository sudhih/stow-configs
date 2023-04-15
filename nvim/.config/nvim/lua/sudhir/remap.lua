-- define a mapleader vim.g.mapleader = ',' open default file browser vim.keymap.set("n", "<space>e", vim.cmd.Ex) quickly jump to NORMAL mode insert mode
vim.keymap.set("i", "fj", "<ESC>")
vim.keymap.set("i", "<leader>e", "<ESC>")
vim.keymap.set("i", "<leader>w", "<ESC>:w<cr>")
vim.keymap.set("i", "<leader>x", "<ESC>:x<cr>")
vim.keymap.set("i", "<leader>q", "<ESC>:q<cr>")

-- visual mode
vim.keymap.set("v", "fj", "<ESC>")
vim.keymap.set("v", "<leader>e", "<ESC>")
vim.keymap.set("v", "<leader>w", "<ESC>:w<cr>")
vim.keymap.set("v", "<leader>x", "<ESC>:x<cr>")
vim.keymap.set("v", "<leader>q", "<ESC>:q<cr>")

-- normal mode
vim.keymap.set("n", "fj", "<ESC>")
vim.keymap.set("n", "<leader>e", "<ESC>")
vim.keymap.set("n", "<leader>w", "<ESC>:w<cr>")
vim.keymap.set("n", "<leader>x", "<ESC>:x<cr>")
vim.keymap.set("n", "<leader>q", "<ESC>:q<cr>")

-- window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
