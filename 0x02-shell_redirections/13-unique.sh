#!/bin/bash

# Read input from the user
read -p "Enter a list of words: " input

# Split the input into an array of words
IFS=' ' read -r -a words <<< "$input"

# Sort the array of words
sorted_words=($(printf '%s\n' "${words[@]}" | sort))

# Loop through each unique word and count its occurrences
for word in "${sorted_words[@]}"; do
    count=$(grep -wc "$word" <<< "$input")

    # Print the word if it appears exactly once
    if [ "$count" -eq 1 ]; then
        echo "$word"
    fi
done
