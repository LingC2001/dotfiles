# Windows Terminal & Prompt Setup

This repository contains example configurations to set up a pleasant Windows terminal experience with GlazeWM, Windows Terminal themes, Nerd Fonts, Oh My Posh, and PowerToys.

## Prerequisites

- `winget` (Windows Package Manager)
- `pwsh` (Powershell 7) `winget install --id Microsoft.PowerShell --source winget`
- VS Code `winget install -e --id Microsoft.VisualStudioCode`
- Docker Desktop `winget install -e --id Docker.DockerDesktop`

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

## 3. Windows Terminal

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

5. Bind `Alt + t` to open a new tab (set default as Ubuntu later), and set `Ctrl + t` to open a windows powershell 7 tab.

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

## 6. WSL2

In powershell, install wsl2 via command:

```powershell
wsl --install
```

Reboot the device and go to Microsoft Store and download the Ubuntu app.

### VS Code Integration
Install the VS Code WSL extension. (https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) <br> 
This should now allow you to open directories directly in WSL environment using `code .`

### Docker Integration
Open Docker Desktop and ensure that in `settings > general > enable WSL2 based engine` is enabled. <br>
Ensure `settings > resources > WSL2 integration` is enabled if the option is there <br>
Add the WSL2 user to docker user group 

```bash
sudo groupadd docker
sudo usermod -aG docker $USER
```

Now restart Docker and WSL, check if docker is working properly by running:

```bash
docker run hello-world
```
