#!/bin/bash
date=$(date +%Y-%m-%d-%H-%M-%S)
rsync -a . --exclude "/node_modules" "/Volumes/your/path/destination/"$date"__OSX"
