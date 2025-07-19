require 'base.options'
require 'base.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out =
    vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

local rtp = vim.opt.rtp
rtp:prepend(lazypath)
require('lazy').setup {

  require 'plugins.lsp',
  require 'plugins.treesitter',
  require 'plugins.which-key',
  require 'plugins.indentline',
  require 'plugins.bufferline',
  require 'plugins.lualine',
  require 'plugins.autocomp',
  require 'plugins.autoformat',
  require 'plugins.snacks',
  require 'plugins.gitsigns',
  require 'plugins.miscellaneous',
  require 'plugins.markdown-render',
  require 'plugins.themes.catppuccin', -- Change to change coloscheme
  -- Supported themes are gruvbox, rose-pine, catppuccin, tokyonight
  -- 'plugins.themes.<colorscheme>'
  --
}
