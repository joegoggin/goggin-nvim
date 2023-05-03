local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Toggle Explorer
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Save File
keymap("n", "<C-s>", ":w<CR>", opts)

-- Quit
keymap("n", "<leader>q", ":confirm q<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Window Split
keymap("n", "<leader>wv", ":vsplit<CR>", opts) 
keymap("n", "<leader>wh", ":split<CR>", opts) 
keymap("n", "<leader>wc", "<C-w>c", opts)

-- Change
keymap("n", "cc", '"_cc', opts)
keymap("n", "cw", '"_cw', opts)
keymap("n", "ci{", '"_ci{', opts)
keymap("n", "ci[", '"_ci[', opts)
keymap("n", "ci<", '"_ci<', opts)
keymap("n", "ci(", '"_ci(', opts)

-- Delete
keymap("n", "dd", '"_dd', opts)
keymap("n", "dw", '"_dw', opts)

-- Clipboard
keymap("n", "<C-c>", "yy", opts)
keymap("n", "<C-v>", "p", opts)

-- Select
keymap("n", "<C-a>", "ggVG", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Insert --
-- Remap ESC
keymap("i", "jk", "<ESC>", opts)

-- Clipboard
keymap("i", "<C-v>", "p", opts)

-- Visual --
-- Remap ESC
keymap("v", "jk", "<ESC>", opts)

-- Change
keymap("v", "c", '"_c', opts)

-- Delete
keymap("v", "d", '"_d', opts)

-- Clipboard
keymap("v", "<C-c>", "y", opts)
keymap("v", "<C-v>", "p", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

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
