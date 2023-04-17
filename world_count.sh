#!/bin/bash

if [$# -eq 0]; then
	echo "usage: $0 directory_path"
	exit 1
fi

if [! -d"$1"]; then
	echo "invlaid directory"
	exit 1
fi




words=0
for file in "$1"/*.txt; do
	N=$(cat "$file"|wc -w)
words=$((words+N))
done

echo "The number of words in repo $1: $words"

