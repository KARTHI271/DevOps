#!/bin/bash

input_file="input.txt"
output_file="output.txt"

awk 'NR < 5 {print} 
     NR >= 5 {
         if ($0 ~ /welcome/) {
             gsub(/give/, "learning")
         }
         print
     }' "$input_file" > "$output_file"

