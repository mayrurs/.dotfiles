# Configuration file for dev setup

## Install zsh as standard shell

Install zsh (default shell on mac but required on Ubuntu)
`sudo apt install zsh -y`

Install ohmyzsh
`sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

Set zsh as default shell on Ubuntu: 
`sudo chsh -s $(which zsh)`

(Optional) Install Powerlevel10k

First follow installation for fonts on ['powerlevel10k]("https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k"). 
Then clone plugin from github:
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`

To activate the settingss set `ZSH_THEME="powerlevel10k/powerlevel10k"`in `~/.zshrc`

(Optional) Vim bindings for zsh shell

Add the following code to the `~/.zshrc` file:
```
# Enable vi mode
bindkey -v
bindkey -M viins 'jk' vi-cmd-mode
```

(Optional) Install Tmux and Neovim 

Clone [neovim]("https://github.com/mayrurs/neovim-lua") and follow the 
instruction in README.md
