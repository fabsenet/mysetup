# MySetup

This will be my one-stop-solution to configure a fresh machine the way I like it.

## Automated Steps

### Installation

- Install Chocolatey (`install_software.ps1`)
- Commom Software will be installed using Chocolatey (`install_software.ps1`)
  - git
  - 7zip
  - VLC
  - Paint.net
  - KeePass
  - Google Chrome
  - ... see `install_software.ps1` for the complete list!

other

```cmd
winget install --id Microsoft.Powershell --source winget
winget install JanDeDobbeleer.OhMyPosh
```

### Configuration

My own default settings are applied (`configure_*.ps1`)

- github desktop app (aliases, vscode as editor)
- PowerShell (including startup path)
  - [oh-my-posh](https://ohmyposh.dev/) (A prompt theme engine for any shell.)
  - [posh-git](https://github.com/dahlbyk/posh-git) (A PowerShell environment for Git)
  - see powershell folder
- Windows Terminal settings
- KeePass (basically _every_ checkbox differs from the default)
