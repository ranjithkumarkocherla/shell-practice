#!/bin/bash
#!/bin/bash

# Define the strings
OLD_STRING="FOO"
NEW_STRING="BAR"
FILE_PATTERN="*.conf"

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE=$1

# Define the starting directory (current directory in this case)
START_DIR="."

echo "Replacing all occurrences of '$OLD_STRING' with '$NEW_STRING' in all $1 $FILE_PATTERN files under $START_DIR"

# Use find to locate files and sed to replace the string in-place
find "$START_DIR" -name "$FILE_PATTERN" -type f -exec sed -i "s/$OLD_STRING/$NEW_STRING/g" {} +

echo "Replacement complete."
