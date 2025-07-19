return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '┃' },
      change = { text = '┃' },
      delete = { text = '┃' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
      untracked = { text = '┆' },
    },
    signs_staged = {
      add = { text = '┃' },
      change = { text = '┃' },
      delete = { text = '┃' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
      untracked = { text = '┆' },
    },
    signs_staged_enable = true,
    signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
    numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
    linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
    word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir = {
      follow_files = true,
    },
    auto_attach = true,
    attach_to_untracked = false,
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'overlay', -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
      virt_text_priority = 100,
      use_focus = true,
    },
    current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil, -- Use default
    max_file_length = 40000, -- Disable if file is longer than this (in lines)
    preview_config = {
      -- Options passed to nvim_open_win
      style = 'minimal',
      relative = 'cursor',
      row = 0,
      col = 1,
    },
  },
  -- Keymaps for <leader>g (GIT)
  vim.keymap.set('n', '<leader>gs', function()
    local config = require('gitsigns.config').config
    local was_enabled = config.signcolumn
    require('gitsigns').toggle_signs()
    local status = was_enabled and 'OFF' or 'ON'
    Snacks.notify('Git Signs is ' .. status, { title = 'Gitsigns' })
  end, { desc = 'Toggle [S]igns' }),

  vim.keymap.set('n', '<leader>gl', function()
    local config = require('gitsigns.config').config
    local was_enabled = config.linehl
    require('gitsigns').toggle_linehl()
    local status = was_enabled and 'OFF' or 'ON'
    Snacks.notify('Git Line highlighting is ' .. status, { title = 'Gitsigns' })
  end, { desc = 'Toggle [l]ine HL' }),
  vim.keymap.set(
    'n',
    '<leader>gn',
    '<cmd>Gitsigns toggle_numhl<cr>',
    { desc = 'Toggle [N]umber HL' }
  ),
  vim.keymap.set('n', '<leader>gh', '<cmd>Gitsigns preview_hunk<cr>', { desc = 'Toggle [H]unk' }),
}
