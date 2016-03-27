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
doIt
unset doIt
source ~/.bash_profile
