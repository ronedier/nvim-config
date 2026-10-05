vim.pack.add {
  'https://github.com/nvim-neotest/neotest',
  'https://github.com/nvim-neotest/nvim-nio',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/antoinemadec/FixCursorHold.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
  'https://github.com/nvim-neotest/neotest-go',
}

require('neotest').setup {
  adapters = { require 'neotest-go' },
  output_panel = { enabled = true, open = 'botright split | resize 15' },
  quickfix = { open = false },
}

vim.keymap.set('n', '<leader>t', function() require('neotest').run.run() end, { desc = 'Run Test' })
vim.keymap.set('n', '<leader>tf', function() require('neotest').run.run(vim.fn.expand '%') end, { desc = 'Run Test File' })
vim.keymap.set('n', '<leader>td', function() require('neotest').run.run(vim.fn.getcwd()) end, { desc = 'Run Current Test Directory' })
vim.keymap.set('n', '<leader>tp', function() require('neotest').output_panel.toggle() end, { desc = 'Toggle Test Output Panel' })
vim.keymap.set('n', '<leader>tl', function() require('neotest').run.run_last() end, { desc = 'Run Last Test' })
vim.keymap.set('n', '<leader>ts', function() require('neotest').summary.toggle() end, { desc = 'Toggle Test Summary' })
