# macOS Development Setup

This repository contains configurations to set up a pleasant macOS terminal experience with Aerospace, Wezterm, Starship, and additional command-line tools.

## Prerequisites

- `brew` (Homebrew)
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

## 1. Install Aerospace

Aerospace is a tiling window manager for macOS.

```bash
brew install aerospace
```

Copy the provided `.aerospace.toml` configuration to:

```
~/.aerospace.toml
```

## 2. Install Wezterm

Wezterm is a GPU-accelerated terminal emulator.

```bash
brew install wezterm
```

Copy the provided `.wezterm.lua` configuration to:

```
~/.wezterm.lua
```

Download and apply the cleaner `wezterm.icns` icon by going to `Finder -> Applications -> Get Info`. 

## 3. Install Starship

Starship is a minimal, blazingly fast, and infinitely customizable shell prompt.

```bash
brew install starship
```

Copy the provided `starship.toml` to:

```
~/.config/starship.toml
```

Add the initialization to your shell configuration. For Zsh, add to `~/.zshrc`:

```bash
eval "$(starship init zsh)"
```

## 4. Zshrc Setup

Copy the provided `.zshrc` to your home directory:

```bash
cp .zshrc ~/.zshrc
```

If you already have a `.zshrc`, merge the contents manually.

## 5. Optional Recommended CLI Tools

Install useful command-line tools and enhancements:

```bash
brew install fzf zsh-autosuggestions zsh-syntax-highlighting zoxide bat eza yazi
```

### Tool Details:

- **fzf**: Fuzzy finder for fast searching through files and command history
- **zoxide**: Smart directory jumper that learns your habits (z command)
- **bat**: Cat clone with syntax highlighting and line numbers
- **eza**: Modern replacement for ls with colors and icons
- **zsh-autosuggestions**: Auto-suggests commands as you type based on history
- **zsh-syntax-highlighting**: Syntax highlighting for the Zsh shell
- **yazi**: Blazing fast terminal file manager written in Rust

After installation, you may need to add them to your `.zshrc`. The provided `.zshrc` already includes configurations for all of these tools.

## Notes

- Make sure you have a Nerd Font installed for proper icon display in Starship and Wezterm
- Download Nerd Fonts from: https://github.com/ryanoasis/nerd-fonts/releases
- After making configuration changes, reload your shell: `exec zsh`
