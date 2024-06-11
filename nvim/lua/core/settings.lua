local o = vim.o;
local g = vim.g;
local cmd = vim.cmd;

cmd('syntax on')
cmd('filetype plugin indent on')
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.softtabstop = 4
o.autoindent = true
o.number = true
o.mouse = 'a'

