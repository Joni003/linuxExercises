#!/bin/bash

mkdir -p "five"

for ((i=1; i<=5; i++)); do
    subdir="five/dir$i";
    mkdir $subdir;
    for ((j=1; j<=4; j++)); do
	filename="$subdir/file$j";
	for ((k=1; k<=$j; k++)); do
	    echo "$j" >> "$filename";
	done
    done
done
	    
