#!/usr/bin/env bash

# This has been shamelessly copied from mathiasbynens/dotfiles
# https://github.com/mathiasbynens/dotfiles/blob/b22c32290e1518c0f228afba254ee6a3f6ab6d7a/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

echo "####################"
echo "Installing Homebrew!"
echo "####################"
which -s brew
if [[ $? != 0 ]] ; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Homebrew already installed, updating..."
    brew update
fi

echo "####################"
echo "Installing Homebrew Packages!"
echo "####################"
brew bundle

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "install.sh" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		--exclude "terminal-demo.png" \
		--exclude "Brewfile" \
		--exclude "misc-installs.sh" \
		--exclude "Nord.itermcolors" \
		-avh --no-perms . ~;
}

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
	echo "####################"
	echo "Syncing Files"
	echo "####################"
	doIt;
	./misc-installs.sh
fi;
unset doIt;
