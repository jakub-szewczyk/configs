local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<leader>y", '"+y', opts)
keymap("n", "<leader>Y", 'gg"+yG', opts)
keymap("n", "<C-j>", ":cnext<CR>", opts)
keymap("n", "<C-k>", ":cprev<CR>", opts)
keymap("n", "<leader>pv", ":Ex<CR>", opts)
keymap("n", "<C-p>", ":GFiles<CR>", opts)
keymap("n", "<leader>pf", ":Files<CR>", opts)
keymap("n", "<leader><CR>", ":so ~/.vimrc<CR>", opts)

keymap("v", "<leader>p", '"_dP', opts)
keymap("v", "<leader>y", '"+y', opts)

keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
