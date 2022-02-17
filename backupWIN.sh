#!/usr/bin/zsh

currentFolder="$(basename $PWD)"

date=$(date +%Y-%m-%d-%H-%M-%S)

folderDestination="$currentFolder$date"

rsync -a . --exclude "/node_modules" "/mnt/g/Mon Drive/dev-cloud/dev-backup/$currentFolder$date __WIN"




