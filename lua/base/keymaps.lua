vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open Project [V]iew' })
vim.keymap.set('i', 'jj', '<ESC>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv", { desc = 'Move selection down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv", { desc = 'Move selection up' })
--Buffers

vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>bx', ':bdelete!<CR>', opts)
vim.keymap.set('n', '<leader>bb', '<cmd> enew <CR>', opts)

-- Window Management
vim.keymap.set('n', '<C-w>v', '<C-w>v', opts)
vim.keymap.set('n', '<C-w>s', '<C-w>s', opts)
vim.keymap.set('n', '<C-w>e', '<C-w>=', opts)
vim.keymap.set('n', '<C-w>x', ':close<CR>', opts)

-- Window Navigation
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Window Resizing
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize +2<CR>', opts)

-- Tab Management
vim.keymap.set('n', '<leader>To', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>Tx', ':tabclose<CR>', opts)
vim.keymap.set('n', '<leader>Tn', ':tabn<CR>', opts)
vim.keymap.set('n', '<leader>Tp', ':tabp<CR>', opts)

vim.keymap.set('n', '<leader>lw', function()
  vim.wo.wrap = not vim.wo.wrap
  print('Line Wrapping: ' .. (vim.wo.wrap and 'on' or 'off'))
end, { desc = '[L]ine [W]rapping' })

-- Indent mode
vim.keymap.set('v', '<Tab>', '>gv', opts)
vim.keymap.set('v', '<S-Tab>', '<gv', opts)

-- Diagnostic keymaps

vim.keymap.set('n', ']d', function()
  vim.diagnostic.jump { count = -1 }
end, { desc = 'Previous Diagnostic' })
vim.keymap.set('n', '[d', function()
  vim.diagnostic.jump { count = 1 }
end, { desc = 'Next Diagnostic' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = '[D]iagonistic Message' })

-- Find and Replace
vim.keymap.set('n', '<leader>ri', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gi<Left><Left><Left>]])
vim.keymap.set('n', '<leader>rr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<leader>?', '<cmd>WhichKey<CR>')

-- Spellcheck

vim.keymap.set('n', '<leader>S', function()
  if vim.o.spell then
    vim.cmd.set 'nospell'
    Snacks.notify('Spellcheck Disabled ❌', { title = 'Spell Check' })
  else
    vim.cmd.set 'spell'
    Snacks.notify('Spellcheck Enabled ✅', { title = 'Spell Check' })
  end
end, { desc = '[S]pellcheck Toggle' })
