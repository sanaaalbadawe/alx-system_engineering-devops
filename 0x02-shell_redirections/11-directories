#!/bin/bash

# Function to count directories recursively
count_directories() {
    local dir="$1"
    local count=0

    # Loop through all directories and subdirectories
    for item in "$dir"/*; do
        if [[ -d "$item" ]]; then
            ((count++))
            count=$((count + $(count_directories "$item"))) # Recursively count directories
        fi
    done

    echo "$count" # Return the count
}

# Count directories and subdirectories
directories_count=$(count_directories .)

# Display the count
echo "Number of directories and subdirectories: $directories_count"
