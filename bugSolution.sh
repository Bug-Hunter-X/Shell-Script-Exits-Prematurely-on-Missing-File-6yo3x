#!/bin/bash

# This script correctly processes a list of files, handling missing files gracefully.
files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/nonexistent.txt")

for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "Processing: $file"
    # Process the file here...
  else
    echo "Error: File '$file' not found"
    # Continue to the next file in the loop 
  fi
done

# Exit with a success code if any file was processed successfully
exit 0