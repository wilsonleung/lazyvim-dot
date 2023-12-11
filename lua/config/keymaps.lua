-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
