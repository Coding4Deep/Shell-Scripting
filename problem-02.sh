# write a shell script that prompts the user for a name of a file or directory
# and reports if it is a regular file, a directory, or another type of file.
# Also perform an ls command against the file or directory with the long listing option.


#!/bin/bash

# Prompt user for a file or directory name
read -p "Enter the name of a file or directory: " FILE

# Check if the file or directory exists
if [ -e "$FILE" ]; then
    if [ -f "$FILE" ]; then
        echo "$FILE is a regular file."
    elif [ -d "$FILE" ]; then
        echo "$FILE is a directory."
    else
        echo "$FILE is another type of file."
    fi
    
    # Perform ls -l on the file or directory
    ls -l "$FILE"
else
    echo "$FILE does not exist."
fi

