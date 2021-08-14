-- Show hybrid line numbers for active buffer
vim.o.number = true

vim.api.nvim_command('augroup numbertoggle')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command('autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif')
vim.api.nvim_command('autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif')
vim.api.nvim_command('augroup END')

-- Indent new line on the same line as the preceeding line
vim.o.autoindent = false
vim.o.smartindent = true

-- Tab settings
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

-- Syntax highlighting for .vs, .fs GLSL filetypes
vim.api.nvim_command('autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl')
