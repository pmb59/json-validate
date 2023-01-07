#!/bin/bash

# Check if a file has been provided as an argument
if [ $# -eq 0 ]; then
  echo "Error: No file provided."
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "Error: File does not exist."
  exit 1
fi

# Validate the JSONL format of the file
while read -r line; do
  if ! python -m json.tool <<< "$line" > /dev/null 2>&1; then
    echo "Error: Not a valid JSONL file."
    exit 1
  fi
done < "$1"

echo "Valid JSONL file."
