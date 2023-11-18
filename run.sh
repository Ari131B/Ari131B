#!/bin/bash

# ANSI color codes
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'  # No color

# Function to check if a command is available
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Check if pkg is available
if command_exists pkg; then
  echo -e "${GREEN}Package manager (pkg) is available.${NC}"
else
  echo -e "${RED}Package manager (pkg) not found. Please install it or use an alternative package manager.${NC}"
  exit 1
fi

# Upgrade system packages
pkg upgrade -y && echo -e "${GREEN}System packages upgraded successfully.${NC}"

# Install x11-repo package repository
pkg install x11-repo -y && echo -e "${GREEN}x11-repo package repository installed successfully.${NC}"

# Show information about the openssl package
pkg show openssl

# Install the openssl-1.1 package
pkg install openssl-1.1 -y && echo -e "${GREEN}openssl-1.1 package installed successfully.${NC}"

# Install tigervnc, xfce4, firefox, and xterm packages
pkg install tigervnc && echo -e "${GREEN}Packages installed successfully.${NC}"

pkg install xfce4 && echo -e "${GREEN}Packages installed successfully.${NC}"

pkg install xterm -y && echo -e "${GREEN}Packages installed successfully.${NC}"

pkg install firefox && echo -e "${GREEN}Packages installed successfully.${NC}"

# Set the DISPLAY environment variable to the VNC server display
export DISPLAY=:1

# Additional commands or configurations can be added here
./start
# Sleep for 5 seconds after each package installation
sleep_duration=5

# Run Firefox 
firefox &

# Function to install a package with an alternative package manager
install_package() {
  if command_exists "$1"; then
    "$1" install "$2" -y && echo -e "${GREEN}Package ($2) installed successfully.${NC}"
    sleep "$sleep_duration"
  else
    echo -e "${RED}Alternative package manager ($1) not found. Please install it.${NC}"
  fi
}

# Example: Install a package using an alternative package manager
# install_package apt-get some-package

# Add more package installations as needed

# Exit successfully
exit 0
