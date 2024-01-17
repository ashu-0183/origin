#!/bin/bash

# Define the base directory to clone repositories
CLONE_DIR="/path/to/clone/repositories"

# Read repository URLs from the YAML file
REPO_URLS=($(cat repos.yaml | grep -oP "(?<=- ).*"))

# Loop through each repository URL
for REPO_URL in "${REPO_URLS[@]}"; do
    REPO_NAME=$(basename "$REPO_URL" .git)
    
    # Clone the repository
    git clone "$REPO_URL" "$CLONE_DIR/$REPO_NAME"

    echo "Processing repository: $REPO_NAME"

    # Switch to the develop branch
    cd "$CLONE_DIR/$REPO_NAME" || exit
    git checkout develop

    # Loop through each subdirectory (uk, hk, etc.) in the app-config folder
    for SUBDIR in "$CLONE_DIR/$REPO_NAME/app-config"/*; do
        echo "Processing subdirectory: $SUBDIR"

        # Create the new folder structure
        mkdir -p "$SUBDIR/gcp/common" "$SUBDIR/gcp/dev" "$SUBDIR/gcp/sit"

        # Copy files accordingly
        cp "$SUBDIR/dev.yaml" "$SUBDIR/gcp/dev/application.yaml"
        cp "$SUBDIR/sit.yaml" "$SUBDIR/gcp/sit/application.yaml"

        # Remove the old folder structure
        rm -r "$SUBDIR"
    done

    # Commit changes to the develop branch
    git add .
    git commit -m "Restructured app-config folders on develop branch"
    git push origin develop

    echo "Completed repository: $REPO_NAME"
done

echo "Task completed successfully."
