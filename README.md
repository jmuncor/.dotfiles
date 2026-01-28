# Dotfiles (Ghostty + Tmux + LazyVim)

My personal configuration files for macOS, featuring a high-performance setup with **Ghostty**, **Tmux**, and **LazyVim** (Neovim).

The visual style is unified around the **Catppuccin** theme. This repository also addresses the "Green Bar" issue on macOS where Tmux themes fail to load due to outdated system Bash versions.

## Step 1: Initial setup

* **a. Install [Homebrew](https://brew.sh/)**
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

* **b. Install GUI Applications**
  ```bash
  brew install --cask ghostty karabiner-elements
  ```

* **c. Install CLI Tools (Bash, Nvim, Tmux, etc.)**
  ```bash
  brew install bash tmux neovim starship eza zsh-autosuggestions zsh-syntax-highlighting
  ```

## Step 2: Get the config files

Clone the repository:
```bash
git clone https://github.com/jmuncor/.dotfiles.git ~/.dotfiles
```

## Step 3: System linking

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
# Backup existing config if needed: mv ~/.config/nvim ~/.config/nvim.bak
rm -rf ~/.config/nvim
ln -s ~/.dotfiles/nvim ~/.config/nvim

# 4. Karabiner
mkdir -p ~/.config/karabiner
rm -f ~/.config/karabiner/karabiner.json
ln -s ~/.dotfiles/karabiner/karabiner.json ~/.config/karabiner/karabiner.json
```

## Step 4: Source the config.zsh in the .zshrc file

```bash
echo 'source ~/.dotfiles/zsh/config.zsh' >> ~/.zshrc
source ~/.zshrc
```

## Step 5: Install Tmux Plugin Manager (TPM)

Now that the Tmux config is linked, install the plugin manager.

```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

**Activate Plugins:**
1.  Open Tmux: `tmux`
2.  Press <kbd>Ctrl + b</kbd> then <kbd>Shift + i</kbd> (Capital I) to install plugins.

## Step 6: Enable LazyVim extras

Open Neovim (`nvim`). It will automatically install `lazy.nvim` and plugins on the first run.

The config is based on LazyVim. To add AI capabilities and goodies:
1.  Type `:LazyExtras`
2.  Navigate to the plugin you want.
3.  Press <kbd>x</kbd> to enable it.

Recommended extras:
* [x] **ai.copilot** (GitHub Copilot)
* [x] **ai.avante** (AI coding assistant)
* [x] **util.mini-hipatterns** (Highlighting utilities)