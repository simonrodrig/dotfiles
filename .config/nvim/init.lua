-- Other Lua Config
require('plugins')
require('keybinds')

-- Plugin setup
require('plugins/lualine')
require('plugins/nvimtree')
require('plugins/cmp')
require('plugins/treesitter')

local opt = vim.opt
local cmd = vim.cmd

-- UI Settings
opt.number = true
opt.relativenumber = true
opt.showmode = false
opt.showtabline = 2
opt.cursorline = true
opt.showmatch = true
opt.colorcolumn = '80'

-- Theming
opt.termguicolors = true
cmd[[
    colorscheme catppuccin
]]

-- Config
opt.clipboard = "unnamedplus"
opt.mouse = 'a'
opt.swapfile = false

-- Indentation
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 8
opt.smartindent = true
