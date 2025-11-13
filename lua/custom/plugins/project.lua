return {
  'DrKJeff16/project.nvim',
  dependencies = { -- OPTIONAL
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'ibhagwan/fzf-lua',
  },
  config = function()
    require('project').setup()
    require('telescope').load_extension 'projects'
  end,
  vim.keymap.set('n', '<leader>sp', ':Telescope projects<CR>', { desc = '[S]earch [P]roject' }),
}
