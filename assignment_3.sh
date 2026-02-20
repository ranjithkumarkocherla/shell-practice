#!/bin/bash
#!/bin/bash

# Define the strings
OLD_STRING="FOO"
NEW_STRING="BAR"
FILE_PATTERN="*.conf"

# Define the starting directory (current directory in this case)
START_DIR="."

#echo "Replacing all occurrences of '$OLD_STRING' with '$NEW_STRING' in all  $FILE_PATTERN files under $START_DIR"

# Use find to locate files and sed to replace the string in-place
FILES_TO_CHANGE=$(find "$START_DIR" -name "$FILE_PATTERN" -type f -exec sed -i "s/$OLD_STRING/$NEW_STRING/g" {} +)
echo "Files to update: $FILES_TO_CHANGE"
#echo "Replacement complete."

# Optional: Loop through them to update
for file in $FILES_TO_CHANGE; do
   sed -i "s/$OLD_STRING/"FOO"/g" "$file"
 done
