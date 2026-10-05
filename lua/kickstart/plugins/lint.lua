-- Linting
vim.pack.add { 'https://github.com/mfussenegger/nvim-lint' }

local lint = require 'lint'
lint.linters_by_ft = {
  markdown = { 'markdownlint-cli2' }, -- Make sure to install `markdownlint-cli2` via Mason or npm
}

-- Create an autocommand which carries out the actual linting on the specified events.
local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
  group = lint_augroup,
  callback = function()
    -- Avoid linting non-editable buffers, including Markdown LSP pop-ups.
    if vim.bo.modifiable then lint.try_lint() end
  end,
})

-- Hide lint and LSP diagnostics while writing Markdown. They are restored and
-- refreshed when InsertLeave fires.
local md_diag_augroup = vim.api.nvim_create_augroup('lint-markdown-hide-insert', { clear = true })
vim.api.nvim_create_autocmd('InsertEnter', {
  group = md_diag_augroup,
  pattern = { '*.md', '*.markdown' },
  callback = function(args) vim.diagnostic.hide(nil, args.buf) end,
})
vim.api.nvim_create_autocmd('InsertLeave', {
  group = md_diag_augroup,
  pattern = { '*.md', '*.markdown' },
  callback = function(args) vim.diagnostic.show(nil, args.buf) end,
})
