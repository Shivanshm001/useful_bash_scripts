#!/bin/bash
#Text color constants
txtred=$(tput setaf 1) # Red
txtgrn=$(tput setaf 2) # Green
txtylw=$(tput setaf 3) # Yellow
txtblu=$(tput setaf 4) # Blue
txtpur=$(tput setaf 5) # Purple
txtcyn=$(tput setaf 6) # Cyan
txtwht=$(tput setaf 7) # White
txtrst=$(tput sgr0)    # Text reset

# Help text
help_text="\n$txtblu THIS SCRIPT IS USED TO AUTOMATE THE PROCESS OF CREATING A REACT JSX COMPONENT INSIDE A GIVEN DIRECTORY.$txtrst\n\n
        $txtylw Usage: create_jsx_component.sh <DIRECTORY_PATH> <COMPONENT_NAME> [OPTION]$txtrst\n\n
        
        OPTION:\n
            \t-s: Create the component inside a subfolder of the same name as the component
"

# Path where the component should be created
dir_path=$1

# Component name
component_name=$2

# Flag to decide if the component should be created in a subfolder
subfolder_flag=$3

# Check if the -s flag is provided
if [ "$dir_path" == "" ] || [ "$dir_path" == "-h" ]; then
    echo -e $help_text
    exit 1
fi

if [ "$subfolder_flag" == "-s" ]; then
    # Create a new directory with the component name
    mkdir -p "$dir_path/$component_name" || {
        echo -e "\n$txtred Failed to create directory.$txtrst"
        exit 1
    }

    # Update the directory path
    dir_path="$dir_path/$component_name"
fi

# Create a new .jsx file with the component name
echo "import React from 'react';

export function $component_name() {
    return (
        <div>
            <h1>$component_name Component</h1>
        </div>
    );
};
" >"$dir_path/$component_name.jsx" || {
    echo -e "\n$txtred Failed to create file.$txtrst"
    exit 1
}

echo -e "\n$txtblu $component_name.jsx created successfully. $txtrst"
echo -e "Exiting..."
sleep 2
clear
exit 0
