local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- function object
local keymap = vim.api.nvim_set_keymap

-- leader key
vim.g.mapleader = ","

-- NORMAL mode --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- netrw file explorer
keymap("n", "<leader>e", ":Lex 30<CR>", opts)

-- resize 'splits' with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "C-Right", ":vertical resize +2<CR>", opts)

-- navigate buffers
-- TODO: install tpope's "unimpaired" package
-- keymap("n", "<S-k>", ":bnext<CR>", opts)
-- keymap("n", "<S-j>", ":bprevious<CR>", opts)

-- INSERT mode
-- move to NORMAL mode
keymap("i", "fj", "<ESC>", opts)
keymap("v", "fj", "<ESC>", opts)

-- VISUAL mode
-- stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up & down
-- TODO: install tpope's "unimpaired" package
-- keymap("v", "<A-j>", ":move .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":move .-1<CR>==", opts)

-- in visual mode, while pasting over selected text, keep pasting content intact. Do not overwrite with presently selected text with pasting content
-- keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
