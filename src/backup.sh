
backup=~/backup/

echo " :: Backuping your configs in $backup :: "
cd ~

if [ -d $backup ]; then
	sudo rm -r $backup
fi

mkdir $backup
cp -r ~/.config/ $backup
