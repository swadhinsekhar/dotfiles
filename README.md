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
vi .zshrc and add ZSH_THEME="powerlevel10k/powerlevel10k"
source .zshrc
```

### ripgrep & fd-find install manually

```
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
curl -LO https://github.com/sharkdp/fd/releases/download/v8.6.0/fd-musl_8.6.0_amd64.deb
sudo dpkg -i fd-musl_8.6.0_amd64.deb
```

### install node and tree-sitter-cli

```
snap install node --classic --channel=14
npm install -g tree-sitter-cli
yarn global add tree-sitter-cli
```

### install latest version of nvim

```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo ln -s ~/.config/nvim/nvim.appimage /usr/bin/nvim
alias vi=nvim   # add in .zshrc
```
