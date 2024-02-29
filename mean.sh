#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "usage: $0 <column> [file.csv]" 1>&2
    exit 0
fi    

column=$1
csv_file=$2

# Calculate Mean
mean=$(cut -d',' -f$column "$csv_file" | tail -n +2 | {
	   sum=0
	   count=0
	   while read -r line; do
	       ((count++))
	       sum=$(echo "scale=4; $sum + $line" | bc)
	   done
	   mean=$(echo "scale=4; $sum / $count" | bc)
	   echo $mean
       })
echo "Mean of column $column: $mean"
