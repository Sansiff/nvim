local opts = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap


map('n', '<C-k><C-b>', ':NvimTreeToggle<CR>', opts)
map('i', 'jk', '<ESC>', opts) 

