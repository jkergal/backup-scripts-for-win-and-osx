#!/usr/bin/zsh

currentFolder="$(basename $PWD)"

date=$(date +%Y-%m-%d-%H-%M-%S)

folderDestination="$currentFolder$date"

rsync -a . --exclude "/node_modules" "/mnt/g/your/path/destination/$currentFolder$date __WIN"




