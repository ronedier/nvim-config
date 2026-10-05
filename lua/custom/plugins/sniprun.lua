vim.pack.add { 'https://github.com/michaelb/sniprun' }

require('sniprun').setup {}
vim.keymap.set('v', '<leader>rr', '<Plug>SnipRun', { silent = true })
vim.keymap.set('n', '<leader>rr', '<Plug>SnipRun', { silent = true })
vim.keymap.set('n', '<leader>rf', '<Plug>SnipRunOperator', { silent = true })
