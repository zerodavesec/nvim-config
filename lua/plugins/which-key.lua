return { -- Useful plugin to show you pending keybinds.
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  opts = {
    -- delay between pressing a key and opening which-key (milliseconds)
    -- this setting is independent of vim.o.timeoutlen
    delay = 0,
    preset = 'modern',
    icons = {
      -- set icon mappings to true if you have a Nerd Font
      mappings = vim.g.have_nerd_font,
      -- If you are using a Nerd Font: set icons.keys to an empty table which will use the
      -- default which-key.nvim defined Nerd Font icons, otherwise define a string table
      separator = '➜',
      colors = true,
      keys = vim.g.have_nerd_font and {} or {
        Up = '<Up> ',
        Down = '<Down> ',
        Left = '<Left> ',
        Right = '<Right> ',
        C = '<C-…> ',
        M = '<M-…> ',
        D = '<D-…> ',
        S = '<S-…> ',
        CR = '<CR> ',
        Esc = '<Esc> ',
        ScrollWheelDown = '<ScrollWheelDown> ',
        ScrollWheelUp = '<ScrollWheelUp> ',
        NL = '<NL> ',
        BS = '<BS> ',
        Space = '<Space> ',
        Tab = '<Tab> ',
        F1 = '<F1>',
        F2 = '<F2>',
        F3 = '<F3>',
        F4 = '<F4>',
        F5 = '<F5>',
        F6 = '<F6>',
        F7 = '<F7>',
        F8 = '<F8>',
        F9 = '<F9>',
        F10 = '<F10>',
        F11 = '<F11>',
        F12 = '<F12>',
      },
    },

    -- Document existing key chains
    spec = {
      -- Help
      { '<leader>?', desc = 'Keybinding Help', icon = { icon = '󰮥', color = 'orange' } },

      -- telescope
      { '<leader>f', group = '[F]ind', icon = { icon = '󰱽' } },
      -- All Snacks (FIND) keys are defined in snacks.lua

      -- Neotree Explorer
      { '<leader>e', desc = 'Open [E]xplorer', icon = { icon = '󰙅', color = 'orange' } },
      -- Buffers
      { '<leader>b', group = '[B]uffers', icon = '' },
      { '<leader>bb', desc = '[B] Create Buffer' },
      { '<leader>bx', desc = '[X] Close Buffer' },

      -- Tab Operations
      { '<leader>T', group = '[T]abs', icon = '󰓩' },
      { '<leader>To', desc = '[O]pen New Tab' },
      { '<leader>Tx', desc = '[X] Close New Tab' },
      { '<leader>Tn', desc = '[N]ext Tab' },
      { '<leader>Tp', desc = '[P]revious Tab' },

      -- Toggling Operations
      --            { '<leader>---', group = '[T]oggle', icon = '' },
      --           { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },

      -- Project Related Action
      { '<leader>p', group = '[P]roject Options', icon = '' },
      { '<leader>pv', desc = 'Project [V]iew', icon = '' },

      -- Find and Replace
      { '<leader>r', group = 'Find and [R]eplace', icon = '󰛔' },
      { '<leader>ri', desc = 'Case [I]nsensitive', icon = '󰛔' },
      { '<leader>rr', desc = 'Case Sensitive', icon = '󰛔' },

      -- Line Operations
      { '<leader>l', group = '[L]ine Operations', icon = '󰘤' },
      { '<leader>lw', desc = '[L]ine [W]rapping', icon = '󰘤' },

      -- LSP and Goto's
      { '<leader>g', group = '[g]oto and LSP Actions', icon = { icon = '󰢱' } },
      --rest of keybindins for this and descriptions in lsp.lua
      --
      --
      -- LazyGit Actions
      { '<leader>G', group = '[G]it LazyGit', icon = { icon = '' } },
      { '<leader>GG', desc = 'Lazy[G]it Current File', icon = { icon = '' } },
      { '<leader>Gg', desc = 'Lazy[g]it', icon = { icon = '' } },
      { '<leader>Gf', desc = 'Lazygit [F]ile History', icon = { icon = '' } },
      { '<leader>GL', desc = 'Lazygit [L]og', icon = { icon = '' } },
      -- rest of keybindings for LazyGit in lazygit.lua

      -- Toggle Comment
      { '<leader>c', desc = '[C]omment/Uncomment', icon = { icon = '󰆄', color = 'orange' } },

      { '<leader>F', desc = '[F]ormat Code', icon = { icon = '󰝖', color = 'orange' } },
      { '<leader>d', desc = '[D]iagnostic Message', icon = { icon = '󰝖', color = 'orange' } },
      { '<leader>z', desc = '[Z]en Mode', icon = { icon = '󰼀', color = 'orange' } },
    },
  },
}
