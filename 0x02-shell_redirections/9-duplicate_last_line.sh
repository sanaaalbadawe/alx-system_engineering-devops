#!/bin/bash

# Get the last line of the file
last_line=$(tail -n 1 iacta)

# Append the last line to the end of the file
echo "$last_line" >> iacta

# Provide confirmation message
echo "The last line of the file iacta has been duplicated."
