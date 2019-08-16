#=====================================================
#============    @cfsanderson .zshrc   ===============
#=====================================================
export ZSH=/Users/caleb/.oh-my-zsh

fpath=(/usr/local/share/zsh-completions $fpath)

#====================    THEME    ====================
ZSH_THEME=amuse

#====================    STUFF    ====================
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"
# optional formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

#====================   PLUGINS   ====================
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git brew chucknorris npm osx rand-quote web-search)

#====================    SOURCE   ====================

source $HOME/.bash_profile
source $ZSH/oh-my-zsh.sh

#====================  SSH  ====================
export SSH_KEY_PATH="~/.ssh/id_rsa"

# #====================  ALIASES  ====================
alias bbd='brew bundle dump -f'
alias be='bundle exec'
alias c='clear'
alias cfg='/usr/bin/git --git-dir=/Users/caleb/.cfg-dotfiles/ --work-tree=/Users/caleb'
alias cfgloga='cfg log --oneline --decorate --graph --all'
alias hidepaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool false; killall Finder'
alias imagemin="node ~/Scripts/imagemin.js"
alias jsfast='bundle exec jekyll serve --watch --limit_posts 1'
alias jsslow='bundle exec jekyll serve --watch --config _config_dev.yml'
alias sasswatch='sass --watch scss:css --style compressed'
alias showpaths='defaults write com.apple.finder _FXShowPosixPathInTitle -bool true; killall Finder'
alias st='speedtest'
alias to=touch_open
touch_open() {
	if ! [ "$1" ]; then
		echo "need a file!" >&2
		return 1
	fi
	: > "$1" && open "$1"
}
alias lsa='ls -a'
alias tp='trash-put'
alias gohome='~ && ls -la'
alias notes='cd ~/Projects/NOTES && code .'

#=================== ASDF ==================

. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash
