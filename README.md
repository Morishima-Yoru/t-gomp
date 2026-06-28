# t-gomp


## Prerequisites

To get the most out of this theme, you'll need the following installed:

### 1. Windows Terminal
Windows Terminal is the recommended terminal emulator for Windows.
- **Install from Microsoft Store:** [Windows Terminal](https://aka.ms/terminal)
- **Install via Winget:**
  ```powershell
  winget install Microsoft.WindowsTerminal
  ```

### 2. PowerShell 7
PowerShell 7 is the modern, cross-platform version of PowerShell.
- **Install via Winget:**
  ```powershell
  winget install --id Microsoft.Powershell --source winget
  ```
- **Alternatively**, download it directly from the [GitHub Releases](https://github.com/PowerShell/PowerShell/releases) or the Microsoft Store.

### 3. JetBrainsMono Nerd Font
A Nerd Font is required to correctly render the powerline symbols and icons in the theme.
- **Install using oh-my-posh:**
  Run the following command and select `JetBrainsMono`:
  ```powershell
  oh-my-posh font install
  ```
- After installing, **set Windows Terminal to use the font**:
  1. Open Windows Terminal settings (`Ctrl + ,`)
  2. Go to **Profiles** > **Defaults** > **Appearance**
  3. Set the **Font face** to `JetBrainsMono NFP` (or `JetBrainsMono NF`).

### 4. Oh My Posh
Oh My Posh is a custom prompt engine.
- **Install via Winget:**
  ```powershell
  winget install JanDeDobbeleer.OhMyPosh -s winget
  ```
- **Update your PowerShell profile:**
  Open your PowerShell profile (`notepad $PROFILE`) and add the following line:
  ```powershell
  oh-my-posh init pwsh --config "C:\path\to\your\t-gomp\gundam.omp.json" | Invoke-Expression
  ```

## Usage

1. Clone or download this repository.
2. Edit your PowerShell profile as mentioned above, pointing `--config` to the absolute path of `gundam.omp.json` where you saved it.
3. Reload your profile (`. $PROFILE`) or restart Windows Terminal.

Enjoy the sleek, mechanical prompt!
