#!/bin/bash

# Get the 10 newest files in the current directory
newest_files=$(ls -lt | grep '^-' | head -n 10)

# Display the newest files
echo "The 10 newest files in the current directory are:"
echo "$newest_files"
