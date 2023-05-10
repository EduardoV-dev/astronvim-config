# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Install extra tools for correct functioning

1. Ripgrep: ```bashrc sudo apt-get install ripgrep```
2. xClip: ```sudo apt-get instal xclip```
3. Nerdfont: 

    3.1. Download [FiraCode NerdFont](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/FiraCode.zip).

    5.2. Unzip and paste font files directly to `~./local/share/fonts`

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/EduardoV-dev/astronvim-config ~/.config/nvim/lua/user
```

#### Start Neovim

```shell
nvim
```
