#===============================================================================
#                 ____                     __                         
#           _____/ __/________ _____  ____/ /__  ______________  ____ 
#          / ___/ /_/ ___/ __ `/ __ \/ __  / _ \/ ___/ ___/ __ \/ __ \
#         / /__/ __(__  ) /_/ / / / / /_/ /  __/ /  (__  ) /_/ / / / /
#         \___/_/ /____/\__,_/_/ /_/\__,_/\___/_/  /____/\____/_/ /_/ 
#                                                                     
#                                    __             
#                        ____  _____/ /_  __________
#                       /_  / / ___/ __ \/ ___/ ___/
#                        / /_(__  ) / / / /  / /__  
#                       /___/____/_/ /_/_/   \___/  
#                       
#===============================================================================

export PATH="/usr/local/sbin:$PATH"
export ZSH=/Users/calebsanderson/.oh-my-zsh
fpath=(/usr/local/share/zsh-completions $fpath)

ZSH_THEME=amuse

setopt autocd
setopt noclobber

ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

plugins=(
    git 
    npm 
    osx 
    web-search 
    zsh-syntax-highlighting
)

source $HOME/.bash_profile
source $ZSH/oh-my-zsh.sh

export SSH_KEY_PATH="~/.ssh/id_rsa"
export VISUAL=vim
export EDITOR="$VISUAL"

alias bbd='brew bundle dump -f'
alias brave='open -a "Brave Browser"'
alias c='clear'
alias chrome='open -a "Google Chrome"'
alias conf='/usr/bin/git --git-dir=/Users/calebsanderson/.cfg-dotfiles/ --work-tree=/Users/calebsanderson'
alias confstat='conf status'
alias conflog='conf log'
alias confloga='conf log --oneline --decorate --graph --all'
alias firefox='open -a "Firefox"'
alias gs='git switch'
alias home='~ && ls -la'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias l='ls -la'
alias lsl='ls -l'
alias mybucket='open https://bitbucket.org/calebsanderson/'
alias myhub='open https://github.com/cfsanderson'
alias notes='cd ~/Projects/.notes && nvim .'
alias preview='open -a Preview'
alias sasswatch='sass --watch scss:css --style compressed'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias sourcezsh='source ~/Configs/zsh/.zshrc'
alias st='speedtest'
alias timez='date “+EST: %H:%M” && TZ=America/Chicago date “+CST: %H:%M” && TZ=America/Denver date “+MST: %H:%M” && TZ=America/Los_Angeles date “+PST: %H:%M”'
alias to=touch_open
touch_open() {
	if ! [ "$1" ]; then
		echo "need a file!" >&2
		return 1
	fi
	: > "$1" && nvim "$1"
}
alias tp='trash-put'
alias vim='nvim'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias zshrc='nvim ~/Configs/zsh/.zshrc'

# ASDF
. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
