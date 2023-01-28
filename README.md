# dotfiles

Linux & Mac terminal setup files

### nvim setup or use lunarvim (recommended)

```
cp nvim ~/.config/
nvim ~/.config/nvim/init.lua
```

#### linux basic packages

```
sudo apt install zsh git curl fd-find ripgrep python-dev \
python3-dev python3-venv unzip fontconfig gperf xsel -y

```

#### zsh setup (optional)

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
vi .zshrc and add ZSH_THEME="powerlevel10k/powerlevel10k"
source .zshrc
```

#### rust setup

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustc -v
```

#### nerd-fonts

```
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
fc-cache -f -v
```

### install latest version of nvim

```
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
# or
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
sudo ln -s ~/.config/nvim/nvim.appimage /usr/bin/nvim

alias vi=nvim   # add in .zshrc
```

#### ripgrep & fd-find install manually (not recommended)

```
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
curl -LO https://github.com/sharkdp/fd/releases/download/v8.6.0/fd-musl_8.6.0_amd64.deb
sudo dpkg -i fd-musl_8.6.0_amd64.deb
```

#### install node and tree-sitter-cli

```
snap install node --classic --channel=14
npm install -g tree-sitter-cli
yarn global add tree-sitter-cli
```

#### tmux setup

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp tmux ~/.tmux.conf

<prefix> + I    #install plugins
<prefix> + U    #update plugins
```

#### set env in ~/.zshrc linux

```
# only for mac terminal
bindkey "^[[9;5u" forward-word
bindkey "^[[0;5u" backward-word

bindkey "\E[1~" beginning-of-line
bindkey "\E[4~" end-of-line
```

#### linux .bashrc env setup

```
alias vi=lvim
export GOROOT=$HOME/go19/go
export GOPATH=$HOME/go19/gocode
export GO111MODULE=auto
export NPMPATH=~/.npm-global/bin
export LVIMPATH=/home/sbe200/.local/bin
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin:$GOROOT/bin:$NPMPATH:$LVIMPATH
```
