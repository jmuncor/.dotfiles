# Dotfiles (Ghostty + Tmux + Neovim)

My personal configuration files for macOS, featuring a high-performance setup with **Ghostty**, **Tmux**, and **Neovim**.

The visual style is unified around the **Catppuccin** theme.

## Step 1: Install Homebrew and Dependencies

* **a. Install [Homebrew](https://brew.sh/)**
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

* **b. Clone Dotfiles**
  ```bash
  git clone https://github.com/jmuncor/.dotfiles.git ~/.dotfiles
  ```

* **c. Install Dependencies**
  ```bash
  cd ~/.dotfiles
  brew bundle
  ```

## Step 2: Link Configuration Files

Link the config files from the dotfiles folder to your system configuration.

```bash
# 1. Ghostty
mkdir -p ~/.config/ghostty
rm -f ~/.config/ghostty/config
ln -s ~/.dotfiles/ghostty/config ~/.config/ghostty/config

# 2. Tmux
mkdir -p ~/.config/tmux
rm -f ~/.tmux.conf
rm -f ~/.config/tmux/tmux.conf
ln -s ~/.dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf

# 3. Nvim
rm -rf ~/.config/nvim
ln -s ~/.dotfiles/nvim ~/.config/nvim

# 4. Karabiner
mkdir -p ~/.config/karabiner
rm -f ~/.config/karabiner/karabiner.json
ln -s ~/.dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
```

## Step 3: Configure Zsh

Add this line to your `~/.zshrc`:

```bash
source ~/.dotfiles/zsh/config.zsh
```

Then reload:

```bash
source ~/.zshrc
```

## Step 4: Install Tmux Plugin Manager (TPM)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

**Activate Plugins:**
1. Open Tmux: `tmux`
2. Press <kbd>Ctrl + b</kbd> then <kbd>Shift + i</kbd> to install plugins.

## Step 5: First Neovim Launch

Open Neovim (`nvim`). It will automatically:
- Install lazy.nvim plugin manager
- Download and install all plugins
- Install LSP servers via Mason (pyright, typescript-language-server)

Run `:checkhealth` to verify the setup.

## Neovim Plugins

| Plugin | Purpose |
|--------|---------|
| catppuccin | Colorscheme (mocha) |
| nvim-treesitter | Syntax highlighting |
| telescope.nvim | Fuzzy finder |
| snacks.nvim | File explorer sidebar |
| markdown-preview.nvim | Live markdown preview in browser |
| nvim-lspconfig | LSP configuration |
| mason.nvim | LSP installer |
| blink.cmp | Autocomplete |
| barbecue.nvim | Breadcrumb navigation |
| conform.nvim | Auto-format on save |
| lualine.nvim | Statusline |
| noice.nvim | Floating cmdline and notifications |
| which-key.nvim | Keybinding hints |
| vim-pencil | Markdown writing mode |

## Neovim Keybindings

| Key | Action |
|-----|--------|
| `<Space>` | Leader key |
| `<leader>e` | Toggle file explorer |
| `<leader>E` | Reveal current file in explorer |
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>fb` | Buffers |
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Hover documentation |
| `<leader>rn` | Rename symbol |
| `<leader>ca` | Code action |
| `<leader>w` | Save file |
| `<leader>mp` | Toggle markdown preview |

## Tmux Keybindings

| Key | Action |
|-----|--------|
| `Ctrl+b` | Prefix |
| `Prefix + I` | Install plugins |
| `Prefix + c` | New window |
| `Prefix + ,` | Rename window |
| `Prefix + %` | Split vertical |
| `Prefix + "` | Split horizontal |
