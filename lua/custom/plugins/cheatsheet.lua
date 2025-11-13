return {
  'sudormrfbin/cheatsheet.nvim',

  requires = {
    { 'nvim-telescope/telescope.nvim' },
    { 'nvim-lua/popup.nvim' },
    { 'nvim-lua/plenary.nvim' },
  },
  config = function()
    require('cheatsheet').setup()
  end,
  vim.keymap.set('n', '<leader>sc', ':Cheatsheet<CR>', { desc = '[S]earch in [C]eatsheet' }),
}
