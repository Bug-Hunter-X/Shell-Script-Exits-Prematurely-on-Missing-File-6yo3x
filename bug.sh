#!/bin/bash

# This script attempts to process a list of files but contains a subtle error.
files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/nonexistent.txt")

for file in "${files[@]}"; do
  if [ -f "$file" ]; then
    echo "Processing: $file"
    # Process the file here...
  else
    echo "Error: File '$file' not found"
  fi
  # the error is here, the script always exits after encountering the first non-existent file
  # This loop will stop immediately if any file is missing. This is because the if statement only checks for the existence of the file and does not perform any other checks for errors. In the scenario where a file does not exist, the script will echo the error message and then exit immediately without processing the remaining files.
  exit 1

done