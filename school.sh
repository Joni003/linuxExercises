#!/bin/bash

cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ',' -f 7 |  { sum=0; sum_n=0; avg=0; while read n; do sum=$((sum + n)); sum_n=$((sum_n +\
 1)); avg=$((sum / sum_n)); done; echo $avg; }
