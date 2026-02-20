#!/bin/bash

# Check if a filename was provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE=$1

# 1. Handle Non-existent file
if [ ! -e "$FILE" ]; then #-e-existing , ! -e - non existing
    echo "Error: File '$FILE' does not exist."
    exit 1
fi

# 2. Handle Permission denied
if [ ! -r "$FILE" ]; then
    echo "Error: Permission denied. Cannot read '$FILE'."
    exit 1
fi

# 3. Handle Empty file
if [ ! -s "$FILE" ]; then
    echo "File '$FILE' is empty."
    echo "Lines: 0"
    echo "Words: 0"
    echo "Characters: 0"
    exit 0
fi

# Calculate metrics using wc
# -l: lines, -w: words, -m: characters (handles multi-byte chars better than -c)
read lines words chars < <(wc -lwm "$FILE")

echo "File: $FILE"
echo "The number of lines: $lines"
echo "The number of words: $words"
echo "The number of characters: $chars"
