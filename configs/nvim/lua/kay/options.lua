-- Core Neovim options

local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Highlight the current line
opt.cursorline = true

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true

-- Searching
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Interface
opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.wrap = false
opt.showmode = false

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Files and undo
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = vim.fn.stdpath("state") .. "/undo"

-- Completion behaviour
opt.completeopt = { "menu", "menuone", "noselect" }

-- Responsiveness
opt.updatetime = 250
opt.timeoutlen = 500

-- System clipboard
opt.clipboard = "unnamedplus"

-- Keep a visible command area
opt.cmdheight = 1
