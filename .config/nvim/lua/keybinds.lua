local g = vim.g
local map = vim.api.nvim_set_keymap

g.mapleader = ' '

local opts = { noremap = true }

-- Reload Nvim
map('n', '<leader>rr', ':source $MYVIMRC<CR>', opts)

-- Tab Navigation
map('n', '<leader><Tab>', ':tabnext<CR>', opts)
map('n', '<leader>n', ':tabnext<CR>', opts)
map('n', '<leader>p', ':tabprev<CR>', opts)
map('n', '<leader>t', ':tabnew <CR>', opts)

-- Use leader + number for fast tab navigation
for i=1,9 do
    map(
        'n',
        string.format('<leader>%d', i),
        string.format(':tabnext %d<CR>', i),
        opts
    )
end

-- Navigating Splits
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Resizing Splits
map('n', '<S-h>', ':vertical resize -2<CR>', opts)
map('n', '<S-j>', ':resize +2<CR>', opts)
map('n', '<S-k>', ':resize -2<CR>', opts)
map('n', '<S-l>', ':vertical resize +2<CR>', opts)

-- Nvim Tree
map('n', '<C-n>', 'NvimTreeOpen<CR>', {})
map('n', '<leader>b', 'NvimTreeOpen<CR>', opts)

map('n', '<M-j>', ':m .+1<CR>==', opts)
map('n', '<M-k>', ':m .-2<CR>==', opts)
map("v", "<M-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<M-k>", ":m '<-2<CR>gv=gv", opts)

-- Discourage use of arrow keys
map('n', '<up>', '<nop>', opts)
map('n', '<down>', '<nop>', opts)
map('n', '<left>', '<nop>', opts)
map('n', '<right>', '<nop>', opts)
map('i', '<up>', '<nop>', opts)
map('i', '<down>', '<nop>', opts)
map('i', '<left>', '<nop>', opts)
map('i', '<right>', '<nop>', opts)
