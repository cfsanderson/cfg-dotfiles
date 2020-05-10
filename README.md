# Personal Dotfiles

My dotfiles are based on [Nicola Paolucci's post](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/). 

I am using shortened bit.do links to the raw file versions of shell scripts. Each script ends with the next url to `curl` so they can be installed in order for a full set-up or independently as needed by following the breadcrumbs. The scripts contain my personal preferences so check out the code at the urls for yourself to make sure it is what you want.

## General Order of Operations  

- Run `curl -Lks http://bit.do/cfsanderson`. It doesn't actually do anything, just ascii art and gives you the first url to `curl`.

- Make the "cfg" alias and get everything started
  - `curl -Lks http://bit.do/cfsanderson-dotfiles | bash`
    - to see stats on this link visit `http://bit.do/cfsanderson-dotfiles-`
  - follow the breadcrumbs that are echoed at the end of each subsequent terminal process by copying, pasteing, and running the command.
    - e.g. `curl -Lks <shortened url> | bash`
  - all shell scripts live here in the [.dotfiles-scripts](https://github.com/cfsanderson/cfg-dotfiles/tree/master/.dotfiles-scripts) directory of the .cfg-dotfiles repo.

- Clone my [.cfg-dotfiles](https://github.com/cfsanderson/cfg-dotfiles) repo

- [Install Homebrew](https://brew.sh/)

- [Checking for ZSH and make the default shell](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

- Install Oh-My-Zsh
  - This may move existing .zshrc file to .zshrc.pre-oh-my-zsh. Simply rename the files and resource the terminal to load from preferred .zshrc

- Get Powerline fonts for `Cousine for Powerline`

- Install [NVM](https://gist.github.com/cfsanderson/32bc37416c1373c5314d9ea98146fa7c)

- Install [NPM dependencies](https://gist.github.com/cfsanderson/087f5fd991a7b8edff0bcc5e451e2fef)

- Install [RVM](https://gist.github.com/cfsanderson/b4aad70c323058c309d2da5b0e2ffb70)
  - Switched to RBENV

- Generate a New SSH Key (https://goo.gl/gWKCSX)
  - [generate new SSH key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) with that link or this [video by DevMarketer](https://www.youtube.com/watch?v=H5qNpRGB7Qw)
    - `ls -al ~/.ssh` to check for existing ssh keys. If no `id-rsa` or `id-rsa.pub` files are present then proceed.
    - `ssh-keygen -t rsa -b 4096 -C "my@email.com"` will generate new keys.
    - on following file location prompt just press enter to leave it in default folder
    - enter passphrase (same as computer login)
    - will generate the keys (public and private) in own files and show random art.
    - `eval "$(ssh-agent -s)"`
    - `ssh-add ~/.ssh/id_rsa`
    - follow with password
  - go to **GitHub > settings > SSH and GPG keys** and delete old SSH key and click on "New SSH Key" button.
  - back in terminal run `pbcopy < ~/.ssh/id_rsa.pub` which will copy the contents of the public key
    - (didn't work for me so I opened the file and copied the contents of the file manually)
  - back in GitHub paste into the key field and save in GitHub - will ask to re-enter GH password.


## TODO
- [ ] Update to reflect switch to RBENV
- [ ] Consolidate to fewer shell scripts or one master script?
    
