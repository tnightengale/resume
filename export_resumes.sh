#!/bin/bash

set -ex

# Loop through each subdirectory in ./themes
for subdir in ./themes/*; do
  if [ -d "$subdir" ]; then
    # Extract the subdirectory name
    subdir_name=$(basename "$subdir")

    # Run the npx resume export command for each subdirectory
    npx resume export --theme "$subdir_name" --resume "$subdir/resume.json" "./artifacts/${subdir_name}-resume.pdf"
    npx resume export --theme "$subdir_name" --resume "$subdir/resume.json" "./artifacts/${subdir_name}-resume.html"
  fi
done
