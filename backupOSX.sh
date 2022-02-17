#!/bin/bash
date=$(date +%Y-%m-%d-%H-%M-%S)
rsync -a . --exclude "/node_modules" "/Volumes/GoogleDrive/Mon Drive/dev-cloud/dev-backup/"$date"__OSX"