# dotfiles

Linux & Mac terminal setup files

### nvim setup

```
cp nvim ~/.config/
nvim ~/.config/nvim/init.lua
```

### linux setup

```
sudo apt install zsh git curl fd-find ripgrep python-dev python3-dev
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
vi .zshrc and add ZSH_THEME="powerlevel10k/powerlevel10k”
source .zshrc
```

### install node and npm

```
sudo snap install node --classic --channel=14
```

### install latest version of nvim

```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo ln -s ~/.config/nvim/nvim.appimage /usr/bin/nvim
alias vi=nvim   # add in .zshrc
```
