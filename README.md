# AstroNvim Template

**NOTE:** This is for AstroNvim v6+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/<your_user>/<your_repository> ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```

## Important Point for the following usage

these tools are need to be executed by the following commands

### (kmp-lsp)[https://github.com/Hessesian/kmp-lsp]

this is a kotlin language server protocol which needs to run this command and install it through cargo

```
cargo install kmp-lsp
```

for usage in a source code directory

```
kmp-lsp extract-sources .
```

### fzf-telescope

you need to install fzf or grep.
