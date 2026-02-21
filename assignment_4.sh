#!/bin/bash

#Task-4. Filter Lines from a File
#Write a script that reads a large CSV/log file line by line and filters all lines that contain the word ERROR.

#Save those lines into a separate output file.Include a header line in the output.


INPUT_FILE="data.csv"
OUTPUT_FILE="error_lines.csv"
HEADER_TEXT="Timestamp,LogLevel,Message,Details" # Replace with your actual header

# 1. Add the header line to the output file
printf "%s\n" "$HEADER_TEXT" > "$OUTPUT_FILE"

# 2. Filter lines containing "ERROR" (case-sensitive by default) from the input file 
#    and append them to the output file
grep "ERROR" "$INPUT_FILE" >> "$OUTPUT_FILE"

echo "Filtered lines with 'ERROR' saved to $OUTPUT_FILE"


