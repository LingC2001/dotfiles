# Windows Terminal & Prompt Setup

This repository contains example configurations to set up a pleasant Windows terminal experience with GlazeWM, Windows Terminal themes, Nerd Fonts, Oh My Posh, and PowerToys.

## Prerequisites

- Windows 10 or 11 with admin privileges
- `winget` (Windows Package Manager)

## 1. Install GlazeWM

```powershell
winget install GlazeWM
```

Copy the provided GlazeWM/ZeBar configs from `.glzr/` into your user directory:

```
C:\Users\<YourUsername>\.glzr\
```

## 2. PowerToys (optional)

Install PowerToys for App Launcher and other utilities:

```powershell
winget install --id Microsoft.PowerToys --source winget
```

**Recommended keybindings:**
- Set App Launcher to `Alt+Space`
- Optionally bind copy/paste to `Alt+C` / `Alt+V`

## 3. Windows Terminal: Color Schemes & Themes

1. Open Windows Terminal settings (`Ctrl + ,` or via `settings.json`)
2. Paste your chosen `*.scheme.json` into the `schemes` section
3. Paste the matching `*.theme.json` into the `themes` section
4. Set your defaults:

```json
"profiles": {
  "defaults": {
    "colorScheme": "rose-pine-moon"
  }
}

"theme": "rose-pine-moon"
```

See `terminal/setting.json.example` for a full example.

## 4. Nerd Fonts

Download from: https://github.com/ryanoasis/nerd-fonts/releases

1. Download and extract (e.g., `FiraCode.zip`)
2. Right-click the `.ttf` files → **Install** (or **Install for all users**)
3. In Windows Terminal, set the font in `profiles > defaults > appearance`

## 5. Oh My Posh (PowerShell Prompt)

Install Oh My Posh:

```powershell
winget install JanDeDobbeleer.OhMyPosh -s winget
```

Place your theme (e.g., `catppuccin_macchiato.omp.json`) in a config directory of your choice (e.g., `~/.ompconfig/`)

Add to your PowerShell profile (`code $PROFILE`):

```powershell
oh-my-posh init pwsh --config "~\.ompconfig\catppuccin_macchiato.omp.json" | Invoke-Expression
```

