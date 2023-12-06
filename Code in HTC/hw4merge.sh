#!/bin/bash

export LC_ALL=C

tempfile="combined_temp.csv"
output_file="hw4best100.csv"

head -n 1 "hw4best_3586.csv" > "$output_file"

for ((i=3586; i<=7565; i++)); do
    input_file="hw4best_${i}.csv"
    if [ -f "$input_file" ]; then
        tail -n +2 "$input_file" >> "$tempfile"
    fi
done

grep -v 'Inf' "$tempfile" | sort -t, -k2,2n | head -n 100 >> "$output_file"

cut -d, -f2- "$output_file" > "${output_file}_modified.csv"
mv "${output_file}_modified.csv" "$output_file"

rm "$tempfile"

