git clone --bare https://github.com/cfsanderson/cfs-dotfiles.git $HOME/.cfs-dotfiles

function cfs {
   /usr/bin/git --git-dir=$HOME/.cfg-dotfiles/ --work-tree=$HOME $@
   echo "===== cfg function has run ====="
}

mkdir -p .cfg-backup
cfg checkout
if [ $? = 0 ]; then
  echo "===== checked out cfg =====";
  else
    echo "===== backing up pre-existing dot files =====";
    cfg checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .cfg-backup/{}
fi;
cfg checkout
cfg config status.showUntrackedFiles no

echo ""
echo ""
echo ""
echo "=====      Next: Install Homebrew and 'brew bundle'?      ====="
echo "===== curl -Lks http://bit.do/cfsanderson-homebrew | bash ====="
