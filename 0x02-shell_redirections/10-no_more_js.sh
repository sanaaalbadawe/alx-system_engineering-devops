#!/bin/bash

# Recursively find all regular files with .js extension and delete them
find . -type f -name "*.js" -delete

# Provide confirmation message
echo "All regular files with .js extension have been deleted."
