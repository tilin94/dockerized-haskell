#!/bin/bash

# Check if project name is passed as an argument, otherwise prompt for input
if [ -z "$1" ]; then
  read -p "Enter project name (dash-case): " project_name
else
  project_name="$1"
fi

# Convert project name from dash-case to CamelCase
project_name_camel=$(echo "$project_name" | sed -r 's/(^|-)([a-z])/\U\2/g')

# Remove the existing .git directory (if any)
rm -rf .git

# Replace occurrences of new-project and NewProject in the copied files
find . -type f -exec sed -i -e "s/new-project/$project_name/g" -e "s/NewProject/$project_name_camel/g" {} \;

# Rename files that match the project name pattern
find . -type f -iname "*.hs" -or -iname "*.cabal" | while read file; do
  mv "$file" "$(echo "$file" | sed -e "s/new-project/$project_name/g" -e "s/NewProject/$project_name_camel/g")"
done

# Remove the script itself after it finishes running
rm -- "$0"

git init

echo "Project '$project_name' initialized successfully!"
