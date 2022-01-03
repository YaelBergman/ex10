#!/bin/bash


echo 'a. Number of lines in the book:'
awk 'END{print NR}' aliceinwonderland.txt



echo 'b.number of lines with the word Alice:'


awk '/Alice/ {print}' aliceinwonderland.txt  | awk 'END{print NR}'


echo 'c. number of times the word " Alice " appeared:'

awk '/ Alice / {print}' aliceinwonderland.txt | awk 'END{print NR}'


echo 'd. number of times the words Alice appeared:'

awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' aliceinwonderland.txt | awk ' /Alice/  {print}' | awk '{SUM+=$2}END {print SUM}'


echo 'e. shortest line:'


cat aliceinwonderland.txt | awk '{print length, $0 |"$1 sort -n" }' | awk '!/1/ {$1=""; print $0}' | head -1


echo 'f. five most common words'

awk '{a[$0]++} END{for (k in a) print k,a[k]}' RS='[[:space:]]+' aliceinwonderland.txt | sort -nk2 | tail -5


echo 'g. number of times the word Alice and a number appeard in a line:'

awk '/Alice/ && /[0-9]/  {print}' aliceinwonderland.txt  | awk 'END{print NR}'

