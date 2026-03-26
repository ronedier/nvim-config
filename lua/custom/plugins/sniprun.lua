return {
  'michaelb/sniprun',
  branch = 'master',

  build = 'sh install.sh',

  config = function()
    require('sniprun').setup {
      -- your options
    }
    vim.api.nvim_set_keymap('v', '<leader>rr', '<Plug>SnipRun', { silent = true })
    vim.api.nvim_set_keymap('n', '<leader>rr', '<Plug>SnipRun', { silent = true })
    vim.api.nvim_set_keymap('n', '<leader>rf', '<Plug>SnipRunOperator', { silent = true })
  end,
}
