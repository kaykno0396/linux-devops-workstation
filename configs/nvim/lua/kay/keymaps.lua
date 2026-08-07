-- Core Neovim key mappings

local map = vim.keymap.set

-- Use Space as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<CR>", {
    desc = "Clear search highlighting",
})

-- Save the current file
map("n", "<leader>w", "<cmd>write<CR>", {
    desc = "Save file",
})

-- Quit the current window
map("n", "<leader>q", "<cmd>quit<CR>", {
    desc = "Quit window",
})

-- Navigate between Neovim windows
map("n", "<C-h>", "<C-w>h", {
    desc = "Move to left window",
})

map("n", "<C-j>", "<C-w>j", {
    desc = "Move to lower window",
})

map("n", "<C-k>", "<C-w>k", {
    desc = "Move to upper window",
})

map("n", "<C-l>", "<C-w>l", {
    desc = "Move to right window",
})

-- Keep selected text highlighted while indenting
map("v", "<", "<gv", {
    desc = "Indent selection left",
})

map("v", ">", ">gv", {
    desc = "Indent selection right",
})

-- Move selected lines
map("v", "J", ":move '>+1<CR>gv=gv", {
    desc = "Move selection down",
})

map("v", "K", ":move '<-2<CR>gv=gv", {
    desc = "Move selection up",
})

-- Diagnostic navigation
map("n", "[d", vim.diagnostic.goto_prev, {
    desc = "Previous diagnostic",
})

map("n", "]d", vim.diagnostic.goto_next, {
    desc = "Next diagnostic",
})

map("n", "<leader>e", vim.diagnostic.open_float, {
    desc = "Show diagnostic",
})
