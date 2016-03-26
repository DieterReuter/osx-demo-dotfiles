#!/bin/bash
cd "$(dirname "$0")"
git pull
function doIt() {
	# prepare all dirs and installs
        if [ ! -d ~/code ]; then
          mkdir ~/code
        fi

	# sync all files to our $HOME directory ~/
	rsync \
	--exclude ".git/" \
	--exclude ".gitignore" \
	--exclude ".gitkeep" \
	--exclude ".DS_Store" \
	--exclude "sync.sh" \
	--exclude "README.md" \
	--exclude "LICENSE" \
	-av . ~

  # set some OSX defaults
  ###bash ~/.dotfiles/osx-set-terminal-defaults.sh

}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
source ~/.bash_profile
