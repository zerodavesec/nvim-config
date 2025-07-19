vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.mouse = 'a'
vim.o.showmode = false
vim.o.linebreak = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.autoindent = true
vim.o.wrap = true
vim.o.breakindent = true

vim.o.cursorline = true
vim.o.scrolloff = 10
vim.o.confirm = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.softtabstop = 4
vim.o.expandtab = true

vim.opt.incsearch = true
vim.opt.cmdheight = 0
vim.opt.termguicolors = true -- needed for bufferline.lua
vim.opt.colorcolumn = '80'
vim.g.have_nerd_font = true

-- Sync clipboard between OS and Neovim.
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
-- Save undo history
vim.o.undofile = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
-- Keep signcolumn on by default
vim.o.signcolumn = 'yes'
-- Decrease update time
vim.o.updatetime = 250
-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300
-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Highlight Yanking
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- This will affect ALL floating windows that use the default FloatBorder group
vim.api.nvim_set_hl(0, 'FloatBorder', {
  fg = vim.api.nvim_get_hl(0, { name = 'FloatBorder' }).fg,
  bg = 'NONE', -- Remove background from all floating borders
})
