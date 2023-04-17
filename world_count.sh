#!/bin/bash
words=0
for file in *.txt; do
	N=$(cat "$file"|wc -w)
words=$((words+N))
done

echo "The number of words in this repo is: $words"

