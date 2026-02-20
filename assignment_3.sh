#!/bin/bash

# -----------------------------
# Script: assignment_3.sh
# Purpose: Replace FOO with BAR
# In all .conf files recursively
# -----------------------------

# Check argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

DIRECTORY="$1"
OLD_STRING="FOO"
NEW_STRING="BAR"

# Check if directory exists
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory '$DIRECTORY' does not exist."
    exit 1
fi

echo "----------------------------------------"
echo "Replacing '$OLD_STRING' with '$NEW_STRING'"
echo "Target Directory: $DIRECTORY"
echo "----------------------------------------"

# Find files that contain OLD_STRING and replace
MODIFIED_FILES=$(find "$DIRECTORY" -type f -name "*.conf" -exec grep -l "$OLD_STRING" {} +)

if [ -z "$MODIFIED_FILES" ]; then
    echo "No files found containing '$OLD_STRING'."
    exit 0
fi

echo "Modified Files:"

for file in $MODIFIED_FILES
do
    echo " -> $file"
    sed -i.bak "s/$OLD_STRING/$NEW_STRING/g" "$file"
done

#  Check exit status
if [ $? -eq 0 ]; then
    echo "----------------------------------------"
    echo "Replacement completed successfully."
    echo "Backup files created with .bak extension."
else
    echo "Error occurred during replacement."
    exit 1
fi

echo "----------------------------------------"
