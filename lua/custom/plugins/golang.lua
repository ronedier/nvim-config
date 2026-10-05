vim.pack.add { 'https://github.com/olexsmir/gopher.nvim' }

require('gopher').setup {
  log_level = vim.log.levels.INFO,
  timeout = 2000,
  installer_timeout = 999999,
  commands = {
    go = 'go',
    gomodifytags = 'gomodifytags',
    gotests = 'gotests',
    impl = 'impl',
    iferr = 'iferr',
  },
  gotests = { template = 'default', template_dir = nil, named = false },
  gotag = { transform = 'snakecase', default_tag = 'yaml', option = nil },
  iferr = { message = nil },
  json2go = { interactive_cmd = 'vsplit', type_name = nil },
}
