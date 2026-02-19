#!/bin/bash

set -e #ERR
trap 'echo "there is an error in $LINENO, command: $BASH_COMMAND"' ERR

echo "Hellow world"
echo "I am learning Devops"
echoo "printing error here"
echo "No error in this"