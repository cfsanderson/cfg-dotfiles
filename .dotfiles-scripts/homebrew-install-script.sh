/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "===== Installing all Brewfile dependencies ====="

brew bundle

echo ""
echo ""
echo ""
echo "=====          Next: Make ZSH default shell?         ====="
echo "===== curl -Lks http://bit.do/cfsanderson-zsh | bash ====="
