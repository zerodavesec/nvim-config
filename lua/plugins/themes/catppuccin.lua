return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = 'mocha', -- latte, frappe, macchiato, mocha
        background = { -- :h background
          light = 'latte',
          dark = 'mocha',
        },
        transparent_background = false,
        show_end_of_buffer = false,
        term_colors = true,
        dim_inactive = {
          enabled = false,
          shade = 'dark',
          percentage = 0.15,
        },
        no_italic = false,
        no_bold = false,
        no_underline = false,
        styles = {
          comments = { 'italic' },
          conditionals = {},
          loops = {},
          functions = { 'italic' },
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = { 'italic' },
          operators = {},
        },
        color_overrides = {},
        custom_highlights = function(colors)
          return {
            TabLineSel = { bg = colors.base },
            BlinkCmpMenuSelection = { fg = colors.sapphire, bg = colors.surface2 },
            Pmenu = { bg = colors.surface0 },
          }
        end,
        default_integrations = true,
        integrations = {
          mason = true,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { 'italic' },
              hints = { 'italic' },
              warnings = { 'italic' },
              information = { 'italic' },
              ok = { 'italic' },
            },
            underlines = {
              errors = { 'underline' },
              hints = { 'underline' },
              warnings = { 'underline' },
              information = { 'underline' },
              ok = { 'underline' },
            },
            inlay_hints = {
              background = true,
            },
          },
          blink_cmp = true,
          gitsigns = true,
          snacks = {
            enabled = true,
            indent_scope_color = '',
          },
          indent_blankline = {
            enabled = true,
            scope_color = '',
            colored_indent_levels = false,
          },
          treesitter = true,
          notify = true,
          mini = {
            enabled = true,
            indentscope_color = '',
          },
          which_key = true,
        },
      }

      -- setup must be called before loading

      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
