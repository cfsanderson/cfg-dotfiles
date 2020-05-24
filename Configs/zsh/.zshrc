#01100011 01100110 01110011 01100001 01101110 01100100 01100101 01110010 01110011 01101111 01101110
#                           __                     _
#                          / _|                   | |
#                      ___| |_ ___  __ _ _ __   __| | ___ _ __ ___  ___  _ __
#                     / __|  _/ __|/ _` | '_ \ / _` |/ _ \ '__/ __|/ _ \| '_ \
#                    | (__| | \__ \ (_| | | | | (_| |  __/ |  \__ \ (_) | | | |
#                     \___|_| |___/\__,_|_| |_|\__,_|\___|_|  |___/\___/|_| |_|
#
#
#01100011 01100110 01110011 01100001 01101110 01100100 01100101 01110010 01110011 01101111 01101110

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

alias bbd='brew bundle dump -f'
alias be='bundle exec'
alias c='clear'
alias conf='/usr/bin/git --git-dir=/Users/calebsanderson/.cfg-dotfiles/ --work-tree=/Users/calebsanderson'
alias confstat='conf status'
alias conflog='conf log'
alias confloga='conf log --oneline --decorate --graph --all'
alias darkdown='cd ~/.vim/plugged/markdown-preview.nvim/ && gco darkdown && cd -'
alias barkdown='cd ~/.vim/plugged/markdown-preview.nvim/ && gco master && cd -'
alias gohome='~ && ls -la'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias l='ls -la'
alias lsl='ls -l'
alias mybucket='open https://bitbucket.org/calebsanderson/'
alias myhub='open https://github.com/cfsanderson'
alias notes='cd ~/Projects/.notes && vim .'
alias codenotes='cd ~/Projects/NOTES && code .'
alias projects='cd ~/Projects && code .'
alias sasswatch='sass --watch scss:css --style compressed'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias sourcezsh='source ~/Configs/zsh/.zshrc'
alias st='speedtest'
alias to=touch_open
touch_open() {
	if ! [ "$1" ]; then
		echo "need a file!" >&2
		return 1
	fi
	: > "$1" && vim "$1"
}
alias tp='trash-put'
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/Configs/zsh/.zshrc'

# ASDF
. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
