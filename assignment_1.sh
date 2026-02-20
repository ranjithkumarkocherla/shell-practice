#!/bin/bash
#Write a script that accepts a filename (or path) as a command-line argument and 
#prints whether:
#The file exists
#It is readable
#It is writable
#Or it is not present
#Extension: If the argument is a directory, list all files inside it.

# Check if an argument is provided

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
mkdir -p $LOGS_FOLDER

if [ "$#" -ne 1 ]; then #$# = number of arguments passed to script.
    echo "Usage: $0 <filename_or_path>" | tee -a $LOGS_FILE
    exit 1
fi
FILE_PATH="$1"

# 1. Check if the file/path exists
if [ ! -e "$FILE_PATH" ]; then
    echo "The file or path '$FILE_PATH' is not present." | tee -a $LOGS_FILE
    exit 1
fi

# 2. If it exists, check if it is a directory
if [ -d "$FILE_PATH" ]; then
    echo "'$FILE_PATH' is a directory. Files inside:" | tee -a $LOGS_FILE
    # List all files inside the directory
    ls -A "$FILE_PATH"
else
    # 3. If it is a regular file, check readability and writability
    echo "'$FILE_PATH' exists and is a regular file."
fi    
     # Check readability
    if [ -r "$FILE_PATH" ]; then
        echo "It is readable." | tee -a $LOGS_FILE
    else
        echo "It is not readable."
    fi
    # Check writability
    if [ -w "$FILE_PATH" ]; then
        echo "It is writable." | tee -a $LOGS_FILE
    else
        echo "It is not writable."
    fi
