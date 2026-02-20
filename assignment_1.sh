#!/bin/bash
#Write a script that accepts a filename (or path) as a command-line argument and 
#prints whether:
#The file exists
#It is readable
#It is writable
#Or it is not present
#Extension: If the argument is a directory, list all files inside it.

# Check if an argument is provided
if [ "$#" -ne 0 ]; then #$# = number of arguments passed to script.
    echo "Usage: $0 count-words.txt"
    exit 1
fi