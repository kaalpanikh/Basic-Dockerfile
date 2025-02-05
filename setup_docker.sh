#!/bin/bash
# setup_docker.sh
# This script installs Docker on Amazon Linux, handling both Amazon Linux 2 and Amazon Linux 2023,
# starts the Docker service, enables it to start on boot, and adds your current user to the docker group.

set -e  # Exit immediately if any command fails

echo "Updating system packages..."

# Check if amazon-linux-extras is available (typically Amazon Linux 2)
if command -v amazon-linux-extras >/dev/null 2>&1; then
    sudo yum update -y
    echo "Installing Docker using amazon-linux-extras..."
    sudo amazon-linux-extras install docker -y
else
    # For systems like Amazon Linux 2023 where amazon-linux-extras is not available
    sudo dnf update -y
    echo "Installing Docker using dnf..."
    sudo dnf install -y docker
fi

echo "Starting Docker service..."
sudo systemctl start docker

echo "Enabling Docker to start on boot..."
sudo systemctl enable docker

# Add the current user to the docker group so docker commands can be run without sudo.
echo "Adding user '$USER' to the docker group..."
sudo usermod -aG docker "$USER"

echo "Docker installation and configuration complete!"
echo "Please log out and log back in, or run 'newgrp docker' to refresh your session."
