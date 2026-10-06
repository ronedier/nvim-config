-- Local FIM completions served by llama.cpp on tiny-little-hat.
-- This must be set before the Vim plugin is loaded.
vim.g.llama_config = {
  endpoint_fim = 'http://tiny-little-hat:8825/infill',
  model_fim = 'ggml-org/Qwen2.5-Coder-3B-Q8_0-GGUF',
  api_key = '',
  show_info = 0,
  -- The plugin otherwise registers FIM autocmds for every buffer, including
  -- Telescope prompts. We install a filtered autocmd below instead.
  auto_fim = false,
  keymap_fim_trigger = '',
}

vim.pack.add { 'https://github.com/ggml-org/llama.vim' }

vim.keymap.set('n', '<leader>lt', '<cmd>LlamaToggle<CR>', { desc = '[T]oggle [L]lama FIM' })
