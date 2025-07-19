return {
  {
    'tpope/vim-sleuth',
  },
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
      local opts = { noremap = true, silent = true }
      vim.keymap.set('n', '<leader>c', require('Comment.api').toggle.linewise.current, opts)
      vim.keymap.set(
        'v',
        '<leader>c',
        "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
        opts
      )
    end,
  },
}
