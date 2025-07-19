return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  dependencies = {
    'williamboman/mason.nvim',
    'zapling/mason-conform.nvim', -- Automatically installs conform formatters
  },
  keys = {
    {
      '<leader>F',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  config = function()
    require('mason').setup()

    -- Setup conform
    require('conform').setup {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { cpp = true }
        if disable_filetypes[vim.bo[bufnr].filetype] then
          return nil
        else
          return {
            timeout_ms = 500,
            lsp_format = 'fallback',
          }
        end
      end,
      formatters_by_ft = { -- Any formatter added here will be auto-installed if available in Mason
        lua = { 'stylua' },
        c = { 'clangd-format' },
        python = { 'ruff_organize_imports', 'ruff_format' },
        go = { 'goimports', 'gofumpt' },
        yaml = { 'prettierd', 'prettier' },
        json = { 'prettierd', 'prettier', stop_after_first = true },
        markdown = { 'prettierd', 'prettier', stop_after_first = true },
        sql = { 'sqlfluff' },
        bash = { 'beautysh', 'shfmt', stop_after_first = true },
        toml = { 'taplo' },
      },
    }
    require('mason-conform').setup()
  end,
}
