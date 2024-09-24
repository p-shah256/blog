#!/bin/bash

# Navigate to the blog directory (modify this path if necessary)
cd ~/myblog

# Pull the latest changes from the git repository
git pull

# Build and start the Docker containers
docker-compose up --build -d

echo "Blog updated successfully!"
