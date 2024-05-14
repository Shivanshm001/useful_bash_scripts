#!/bin/bash

#Colour constants
txtred=$(tput setaf 1) # Red
txtgrn=$(tput setaf 2) # Green
txtylw=$(tput setaf 3) # Yellow
txtblu=$(tput setaf 4) # Blue
txtpur=$(tput setaf 5) # Purple
txtcyn=$(tput setaf 6) # Cyan
txtwht=$(tput setaf 7) # White
txtrst=$(tput sgr0)    # Text reset

# Function to organize files
organize_files() {
    dir_path=$1

    # Loop over all files in the directory
    for file in "$dir_path"/*; do
        # If it is a file
        if [ -f "$file" ]; then
            # Get the extension of the file
            extension="${file##*.}"
            # Create a directory for the extension if it doesn't exist
            mkdir -p "$dir_path/$extension"
            # Move the file into the directory
            mv "$file" "$dir_path/$extension/"
        fi
    done
}

# Get the directory from the user
dir_path=$1

# Check if directory exists
if [ ! -d "$dir_path" ]; then
    echo "Directory does not exist."
    exit 1
fi

organize_files "$dir_path"
