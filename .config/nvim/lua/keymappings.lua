-- Set leader key
vim.g.mapleader = ','

-- Map keys to jump to beginning/end of line
vim.api.nvim_set_keymap('n', 'H', '^', {noremap = true})
vim.api.nvim_set_keymap('n', 'L', '$', {noremap = true})
