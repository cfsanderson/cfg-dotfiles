# README

These install scripts are daisy-chained together using `bit.do` shortened urls that link back to the raw files on Github. They are meant to be run in succession starting with the `xcode-install-script` which is generally the first thing in a fresh install on a new machine. Although they can be run consecutively, some are useful as stand alone install scripts. You can visit the links directly to check out the code or read them on Github. Install them using the `curl -Lks http://bit.do/cfsanderson | bash` command from any bash shell. Below is an ordered list of the urls and a brief description of what they accomplish.

1. `curl -Lks http://bit.do/cfsanderson | bash` just echos a creative ascii art name with the next xcode link and the github repo url.

2. [http://bit.do/cfsanderson-xcode](https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.dotfiles-scripts/xcode-install-script.sh) - Installs Xcode select.

3. [http://bit.do/cfsanderson-cfg-alias](https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.dotfiles-scripts/alias-cfg-install-script.sh) - Intializes the "conf" alias.

4. [http://bit.do/cfsanderson-cfg-clone](https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.dotfiles-scripts/cfg-dotfiles-install-script.sh) - Clones the cfg-dotfiles repo.

5. [http://bit.do/cfsanderson-homebrew](https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.dotfiles-scripts/homebrew-install-script.sh) - Installs homebrew and runs 'brew bundle' to install everything in the Brewfile.

6. [http://bit.do/cfsanderson-zsh](https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.dotfiles-scripts/zsh-install-script.sh) - Make zsh the default shell.

7. [http://bit.do/cfsanderson-oh-my-zsh](https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.dotfiles-scripts/oh-my-zsh-install-script.sh) - Installs oh-my-zsh. This will probably backup existing .zshrc file and will need to delete new and return backup to original name.

8. [http://bit.do/cfsanderson-powerline](https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.dotfiles-scripts/powerline-install-script.sh) - Installs the Powerline fonts (Cousine).

9. [http://bit.do/cfsanderson-npm](https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.dotfiles-scripts/npm-install-script.sh) - Installs any npm packages (like nodemon and trash CLI).

10. [http://bit.do/cfsanderson-ssh](https://raw.githubusercontent.com/cfsanderson/cfg-dotfiles/master/.dotfiles-scripts/ssh-install-script.sh) - Generates new SSH keys and give instructions for how to sync with Github.
