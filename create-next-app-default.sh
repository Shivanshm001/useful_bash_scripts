#!/bin/bash

project_dir=$1
echo "Project directory : $project_dir"
default_dir="$PWD/next-app"

function init_next() {
  npx create-next-app "$1" --ts --tailwind --eslint --src-dir --app -- --use-npm
}

# If no directory path is specified
if [ -z "$project_dir" ]; then
  echo 'No project directory specified!'
  echo "Creating a default project directory : $default_dir"
   rm -rf "$default_dir" || exit
   mkdir "$default_dir" || exit
   init_next "$default_dir"
   cd "$default_dir" || exit
else
  init_next "$project_dir"
  cd "$project_dir" || exit
  echo "Switched to directory: $project_dir"
fi
