#!/bin/bash

read -p "Enter start IP: " start
read -p "Enter end IP: " end

echo "Scanning performed from $start to $end"

# last octet extract
start_last=${start##*.}
end_last=${end##*.}

# network part extract
network=${start%.*}

for ((i=$start_last; i<=$end_last; i++))
do
    echo "Scanning $network.$i"
done