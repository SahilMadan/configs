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
