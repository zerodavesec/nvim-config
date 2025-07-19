# dotfiles-nvim

> ⚡ My personal, fast, and modern Neovim configuration built with Lua

This repository contains my custom **Neovim configuration**, designed for speed, clarity, and a streamlined development experience. It's built around modular Lua components and leverages modern plugins like `blink.cmp` and `snacks.nvim`.

---

## 🔥 Features

- ✨ Minimal yet powerful setup using Lua
- 🧠 LSP support with `nvim-lspconfig`, managed via `mason.nvim`
- 🪄 Autocompletion powered by `blink.cmp` and `LuaSnip`
- 🗂️ Custom picker and file explorer via `snacks.nvim`
- 🌈 Beautiful UI with `tokyonight.nvim`, `lualine.nvim`, and `bufferline.nvim`
- 📌 Inline diagnostics and progress with `fidget.nvim`
- ✅ Git integration via `gitsigns.nvim`
- 📎 Commenting, indentation guides, and more quality-of-life enhancements
- ⌨️ Which-key popup for discovering keybindings

---

## 📦 Plugin Highlights

### Core Experience

- **Completion**: `blink.cmp` + `LuaSnip`, `friendly-snippets`
- **LSP**: `nvim-lspconfig`, `mason.nvim`, `mason-lspconfig.nvim`, `fidget.nvim`
- **File Explorer & Picker**: `snacks.explorer`, `snacks.picker` (via `snacks.nvim`)

### UI

- **Theme**: `tokyonight.nvim`
- **Statusline**: `lualine.nvim`
- **Bufferline**: `bufferline.nvim`
- **Indent Guides**: `indent-blankline.nvim`
- **Icons**: `nvim-web-devicons`

### Utilities

- **Git**: `gitsigns.nvim`
- **Comments**: `Comment.nvim`
- **Snippets**: `LuaSnip`, `friendly-snippets`
- **Keybinding Help**: `which-key.nvim`
- **Diagnostics UI**: `todo-comments.nvim`, `fidget.nvim`

---

## 🛠 Installation

**Requiremets**

- Neovim >= 0.11
- fd (brew install fd)
- rg (brew install rg)
- lazygit (brew install lazygit)
- npm (brew install npm)
- A nerd font.

_If you are on Linux, use your distro's de-facto package manager or brew if installed_

1. **Backup your current config**:

   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup

   ```

2. **Clone this repository**:

   ```bash
   git clone https://github.com/zerodavesec/dotfiles-nvim ~/.config/nvim
   ```

3. **Start Neovim and let `lazy.nvim` sync plugins**:

   ```bash
   nvim
   ```

   Then run:

   ```
   :Lazy sync
   ```

4. **Optional**: Set up LSPs in lsp.lua (LSPs and Linters) and autocomp.lua (formatters via conform.nvim).

---

## 📁 Structure

```
~/.config/nvim/
├── init.lua
├── lua/
│   ├── base/         -- Base Vim settings (Keymaps and Options)
│   ├── plugins/      -- Plugin definitions and configurations
```

---

## 📃 License

This config is licensed under the [MIT License](LICENSE).

---

Happy editing! 😄
