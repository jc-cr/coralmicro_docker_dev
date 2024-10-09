#!/bin/bash

set -e

# Function to clone and setup the repository if not already present
setup_repo() {
    if [ ! -d "/coralmicro/.git" ]; then
        echo "Cloning Coral Micro repository..."
        git clone --recurse-submodules -j8 https://github.com/google-coral/coralmicro .
        ./setup.sh
        ./build.sh
    else
        echo "Coral Micro repository already exists. Skipping setup..."
    fi
}

# Execute the command passed to the script
case "$1" in
    bash_interactive)
        echo "Setting up Coral Micro environment..."
        setup_repo
        echo "Starting interactive bash session..."
        /bin/bash
        ;;
    *)
        exec "$@"
        ;;
esac