# 🚀 dotfiles

A collection of personalized configurations for a productive development setup across multiple platforms.

## 📑 Table of Contents

- [Overview](#overview)
- [Platform Setups](#platform-setups)
- [Features](#features)
- [Quick Start](#quick-start)
- [File Structure](#file-structure)

## Overview

This repository contains carefully curated dotfiles and configurations for setting up a beautiful, efficient development environment. Each platform has its own optimized setup with terminal emulators, shell prompts, window managers, and productivity tools.

## 🖥️ Platform Setups

### **macOS** → [📖 macOS Setup Guide](./macos/README.md)
Complete setup for macOS development environment featuring:
- **Aerospace** - Tiling window manager
- **Wezterm** - GPU-accelerated terminal emulator
- **Starship** - Lightning-fast shell prompt
- **Zsh** - Enhanced shell with plugins and aliases
- **CLI Tools** - fzf, yazi, zsh-autosuggestions, and more

[→ View macOS Setup](./macos/README.md)

---

### **Windows** → [📖 Windows Setup Guide](./win/README.md)
Comprehensive Windows development setup including:
- **GlazeWM** - Modern window manager
- **Windows Terminal** - Advanced terminal with custom themes
- **Oh My Posh** - Customizable shell prompt
- **WSL2** - Windows Subsystem for Linux integration
- **PowerToys** - Windows productivity tools

[→ View Windows Setup](./win/README.md)

---

## ✨ Features

| Feature | macOS | Windows |
|---------|-------|---------|
| Window Management | Aerospace (Tiling) | GlazeWM (Tiling) |
| Terminal | Wezterm | Windows Terminal |
| Shell Prompt | Starship | Oh My Posh |
| Shell | Zsh | PowerShell 7 |
| Linux Integration | N/A | WSL2 |
| Custom Themes | ✅ | ✅ |
| CLI Enhancements | ✅ | ✅ |

## 🚀 Quick Start

**For macOS:**
```bash
git clone https://github.com/yourusername/dotfiles.git
cd dotfiles/macos
# Follow the setup guide
```

**For Windows:**
```powershell
git clone https://github.com/yourusername/dotfiles.git
cd dotfiles\win
# Follow the setup guide
```

## 📁 File Structure

```
dotfiles/
├── README.md                 # This file
├── macos/                    # macOS configurations
│   ├── README.md             # macOS setup instructions
│   ├── .aerospace.toml       # Aerospace window manager config
│   ├── .wezterm.lua          # Wezterm terminal config
│   ├── .zshrc                # Zsh shell configuration
│   └── starship.toml         # Starship prompt config
└── win/                      # Windows configurations
    ├── README.md             # Windows setup instructions
    ├── terminal/             # Terminal configs and themes
    │   ├── setting.json.example
    │   ├── catppuccin_macchiato.omp.json
    │   ├── rose-pine-moon.scheme.json
    │   ├── rose-pine-moon.theme.json
    │   └── starship.toml
    └── [other configs]
```

## 🔗 Resources

- [Aerospace Documentation](https://nikitabobko.github.io/AeroSpace/)
- [Wezterm Documentation](https://wezfurlong.org/wezterm/)
- [Starship Documentation](https://starship.rs/)
- [Homebrew](https://brew.sh/)
- [Nerd Fonts](https://www.nerdfonts.com/)

---

**Last updated:** January 2026
