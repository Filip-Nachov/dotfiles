local builtin = require('telescope.builtin')

vim.keymap.set('n', '<c-p>', builtin.findfiles, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fg', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
