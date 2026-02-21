#!/bin/bash

length=$1

# Minimum length check (strong password ki at least 4 kavali)
if [ "$length" -lt 4 ]; then
    echo "Password length must be at least 4"
    exit 1
fi

# One character from each category
upper=$(tr -dc 'A-Z' < /dev/urandom | head -c 1)
lower=$(tr -dc 'a-z' < /dev/urandom | head -c 1)
digit=$(tr -dc '0-9' < /dev/urandom | head -c 1)
special=$(tr -dc '!@#$%' < /dev/urandom | head -c 1)

# Remaining characters
remaining=$((length - 4))

others=$(tr -dc 'A-Za-z0-9!@#$%' < /dev/urandom | head -c $remaining)

# Combine all
password="$upper$lower$digit$special$others"

# Shuffle password
password=$(echo $password | fold -w1 | shuf | tr -d '\n')

echo "Strong Password:"
echo $password
