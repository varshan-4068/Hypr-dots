#!/usr/bin/env bash

backup=~/backup/

echo " :: Backuping your configs in $backup :: "
cd ~ || return

if [ -d $backup ]; then
	sudo rm -r $backup
fi

mkdir $backup
cp -r ~/.config/ $backup
