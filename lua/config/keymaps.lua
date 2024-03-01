-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Normal --

-- Better Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<C-n>", ":Lex 30<cr>", opts)

-- Navigate Buffers
keymap("n", "S-l", ":bnext<CR>", opts)
keymap("n", "S-h", ":bprevioust<CR>", opts)

-- Visual --

--Indent block
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP"', opts)
