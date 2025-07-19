return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    explorer = {
      win = {
        width = 30,
      },
    },
    picker = {
      sources = {
        explorer = {
          replace_newtr = true,
        },
      },
    },
    notifier = {
      timeout = 3000, -- default timeout in ms
      width = { min = 40, max = 0.4 },
      height = { min = 1, max = 0.6 },
      -- editor margin to keep free. tabline and statusline are taken into account automatically
      margin = { top = 0, right = 1, bottom = 0 },
      padding = true, -- add 1 cell of left/right padding to the notification window
      sort = { 'level', 'added' }, -- sort by level and time
      -- minimum log level to display. TRACE is the lowest
      -- all notifications are stored in history
      level = vim.log.levels.TRACE,
      icons = {
        error = ' ',
        warn = ' ',
        info = ' ',
        debug = ' ',
        trace = ' ',
      },
      keep = function(notif)
        return vim.fn.getcmdpos() > 0
      end,
      ---@type snacks.notifier.style
      style = 'fancy',
      top_down = true, -- place notifications from top to bottom
      date_format = '%R', -- time format for notifications
      -- format for footer when more lines are available
      -- `%d` is replaced with the number of lines.
      -- only works for styles with a border
      ---@type string|boolean
      more_format = ' ↓ %d lines ',
      refresh = 50, -- refresh at most every 50ms
    },
    lazygit = {
      configure = true, -- automatically configure lazygit to use the current colorscheme
    },
    dashboard = {
      sections = {
        { section = 'header' },
        { section = 'keys', gap = 1 },
        {
          icon = ' ',
          title = 'Recent Files',
          section = 'recent_files',
          indent = 2,
          padding = { 2, 2 },
        },
        { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 2 },
        { section = 'startup' },
      },
    },
    -- scroll = {
    --   animate = {
    --     duration = {
    --       step = 10,
    --       total = 120,
    --     },
    --     easing = 'linear',
    --   },
    -- },
    zen = {
      toggles = {
        dim = false,
        git_signs = true,
        diagnostics = true,
        inlay_hints = true,
      },
      enter = true,
      fixbuf = false,
      minimal = true,
      width = 100,
      height = 0,
      backdrop = { transparent = true, blend = 40 },
      keys = { q = false },
      zindex = 40,
      wo = {
        winhighlight = 'NormalFloat:Normal',
      },
      w = {
        snacks_main = true,
      },
    },
  },
  keys = {
    -- Explorer Keybinds
    {
      '<leader>e',
      function()
        require('snacks').explorer()
      end,
      desc = 'Open [E]xplorer',
    },
    -- Picker Keybinds to Find.
    {
      '<leader>fs',
      function()
        Snacks.picker.smart()
      end,
      desc = '[S]mart Find Files',
    },
    {
      '<leader>ff',
      function()
        Snacks.picker.files()
      end,
      desc = '[F]iles',
    },
    {
      '<leader>fn',
      function()
        Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
      end,
      desc = '[N]eovim Files',
    },
    {
      '<leader>fg',
      function()
        Snacks.picker.grep()
      end,
      desc = '[G]rep in CWD',
    },
    {
      '<leader>fw',
      function()
        Snacks.picker.grep_word()
      end,
      desc = 'Current [W]ord Grep',
    },
    {
      '<leader>fr',
      function()
        Snacks.picker.recent()
      end,
      desc = '[R]ecent Files',
    },
    {
      '<leader>fo',
      function()
        Snacks.picker.grep_buffers()
      end,
      desc = 'Grep in [O]pen Buffers',
    },
    {
      '<leader>fb',
      function()
        Snacks.picker.buffers { focus = 'list' }
      end,
      desc = '[B]uffer Search',
    },
    {
      '<leader>fp',
      function()
        Snacks.picker.projects()
      end,
      desc = '[P]rojects',
    },
    {
      '<leader>fh',
      function()
        Snacks.picker.help()
      end,
      desc = '[H]elp',
    },
    {
      '<leader>fk',
      function()
        Snacks.picker.keymaps()
      end,
      desc = '[K]eymaps',
    },
    {
      '<leader>fc',
      function()
        Snacks.picker.colorschemes {
          focus = 'list',
        }
      end,
      desc = '[C]olorscheme',
    },
    {
      '<leader>fu',
      function()
        Snacks.picker.undo {
          focus = 'list',
        }
      end,
      desc = '[U]ndo Actions',
    },
    {
      '<leader>fy',
      function()
        Snacks.picker.registers()
      end,
      desc = '[Y]ank (Registers)',
    },
    {
      '<leader>fd',
      function()
        Snacks.picker.diagnostics { focus = 'list' }
      end,
      desc = '[D]iagnostics in File',
    },
    -- Keymaps to open lazygit
    {
      '<leader>Gg',
      function()
        Snacks.lazygit()
      end,
      desc = 'Lazy[G]it',
    },
    {
      '<leader>GG',
      function()
        Snacks.lazygit { cwd = vim.fn.expand '%:p:h' }
      end,
      desc = 'Lazy[G]it (current file)',
    },
    {
      '<leader>Gf',
      function()
        Snacks.lazygit.log_file()
      end,
      desc = 'Lazygit Current [F]ile History',
    },
    {
      '<leader>GL',
      function()
        Snacks.lazygit.log()
      end,
      desc = 'Lazygit [L]og',
    },

    -- ZEN MODE
    {
      '<leader>z',
      function()
        Snacks.zen()
      end,
      desc = '[Z]en Mode',
    },
  },
}
