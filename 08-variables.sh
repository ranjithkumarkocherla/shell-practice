#!/bin/bash

#special variables#

echo "all args passed to script: $@"
echo " number of vars passed to script: $#"
echo "script name: $0"
echo "presenr working directory: $PWD"
echo "who is running: $USER"
echo "Home directory of current user: $HOME"
echo "PID of the script: $$"
sleep 100 &
echo "last command exit status: $?"
echo "PID of last background process: $!"
echo "All args passed into script: $*"