#!/bin/bash

# Write a shell script that consists of a function that displays 
# the number of files in the present working directory. 
# Name this function “file_count” and call it in your script. 
# If you use variable in your function, remember to make it a local variable.

# Solution:

function file_count()
 {
   local NUMBER_OF_FILE=$(ls -l | wc -l)
    echo "$NUMBER_OF_FILE"
 }
file_count

file_count() {
    local count
    count=$(find . -maxdepth 1 -type f | wc -l)
    echo "Number of files in the current directory: $count"
}

# Call the function
file_count


# Function to count files in a given directory
file_count() {
    local dir="$1"
    
    # Check if directory exists
    if [ ! -d "$dir" ]; then
        echo "Error: '$dir' is not a valid directory."
        return 1
    fi

    local count
    count=$(find "$dir" -maxdepth 1 -type f | wc -l)
    echo "Number of files in '$dir': $count"
}

# Call the function with argument or default to current directory
file_count "${1:-.}"
