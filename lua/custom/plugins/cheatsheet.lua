vim.pack.add {
  'https://github.com/sudormrfbin/cheatsheet.nvim',
  'https://github.com/nvim-telescope/telescope.nvim',
  'https://github.com/nvim-lua/popup.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
}

require('cheatsheet').setup()
vim.keymap.set('n', '<leader>sc', ':Cheatsheet<CR>', { desc = '[S]earch in [C]heatsheet' })
