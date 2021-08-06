-- Set leader key
vim.g.mapleader = ','

-- Map keys to jump to beginning/end of line
vim.api.nvim_set_keymap('n', 'H', '^', {noremap = true})
vim.api.nvim_set_keymap('n', 'L', '$', {noremap = true})
vim.api.nvim_set_keymap('n', 'dH', 'd^', {noremap = true})
vim.api.nvim_set_keymap('n', 'dL', 'd$', {noremap = true})
vim.api.nvim_set_keymap('n', 'cH', 'c^', {noremap = true})
vim.api.nvim_set_keymap('n', 'cL', 'c$', {noremap = true})
