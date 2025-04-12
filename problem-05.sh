#!/bin/bash

# Function to rename all .sh files to .bash in a given directory
rename_file() {
    local dir="$1"

    # Check if directory exists
    if [ ! -d "$dir" ]; then
        echo "Error: '$dir' is not a valid directory."
        return 1
    fi

    for file in "$dir"/*.sh; do
        # Skip if no .sh files found
        [ -e "$file" ] || continue

        local new_file="${file%%.bash}.sh"
        mv "$file" "$new_file"
        echo "Renamed: $file -> $new_file"
    done
}

# Call the function with argument or default to current directory
rename_file "${1:-.}"
