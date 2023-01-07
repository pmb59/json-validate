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

# Check if the file is a valid JSON file
if ! python -m json.tool "$1" > /dev/null 2>&1; then
  echo "Error: Not a valid JSON file."
  exit 1
fi

echo "Valid JSON file."
