#!/usr/bin/env bash

backup=~/backup/

gum spin --spinner line --title="Backuping your configs in $backup" sleep 3.8
cd ~ || return

if [ -d $backup ]; then
	sudo rm -r $backup
fi

mkdir $backup
cp -r ~/.config/ $backup
