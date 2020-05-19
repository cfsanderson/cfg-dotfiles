#===============================================================================
#====================         cfsanderson                  =====================
#===============================================================================

export PATH="/usr/local/sbin:$PATH"
export ZSH=/Users/calebsanderson/.oh-my-zsh
fpath=(/usr/local/share/zsh-completions $fpath)

ZSH_THEME=amuse

setopt autocd		# Automatically cd into typed directory.
setopt noclobber    # Prevents overwriting files. If intended use `cat file.txt >! overwrite.txt`

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
alias gohome='~ && ls -la'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias l='ls -la'
alias lsl='ls -l'
alias myhub='open https://github.com/cfsanderson'
alias notes='cd ~/Projects/NOTES && vim .'
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
	: > "$1" && open "$1"
}
alias tp='trash-put'
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/Configs/zsh/.zshrc'

# ASDF
. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
