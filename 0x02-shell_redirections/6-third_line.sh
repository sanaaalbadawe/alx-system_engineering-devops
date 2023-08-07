
#!/bin/bash

# Store the file content in an array
mapfile -t lines < iacta

# Check if the file has at least three lines
if [ "${#lines[@]}" -ge 3 ]; then
  # Print the third line
  echo "${lines[2]}"
else
  echo "File does not have at least three lines"
fi
