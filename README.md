# Script Documentation: Package Installation and Configuration

## Overview

This Bash script is designed to automate the installation and configuration of various packages on a Unix-like system. It checks for the availability of the package manager (`pkg`), upgrades system packages, installs the `x11-repo` package repository, and installs specific packages such as `openssl-1.1`, `tigervnc`, `xfce4`, `firefox`, and `xterm`.

## Prerequisites

- **pkg Package Manager:** Ensure that the `pkg` package manager is installed on your system.

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/Ari131B/firefox.git
    ```

2. Navigate to the script directory:

    ```bash
    cd firefox
    ```

3. Make the script executable:

    ```bash
    chmod +x start
    ```

    ```bash
    chmod +x stop
    ```
     
   ```bash
    chmod +x run.sh
    ```


4. Run the script:

    ```bash
    ./run.sh
    ```

## Functionality

- **Check pkg Availability:**
  - The script verifies if the `pkg` package manager is available.

- **Upgrade System Packages:**
  - It upgrades system packages using `pkg`.

- **Install x11-repo Package Repository:**
  - The script installs the `x11-repo` package repository using `pkg`.

- **Show Information about openssl Package:**
  - Displays information about the `openssl` package.

- **Install openssl-1.1 Package:**
  - Installs the `openssl-1.1` package using `pkg`.

- **Install Additional Packages:**
  - Installs `tigervnc`, `xfce4`, `firefox`, and `xterm` packages.

- **Set DISPLAY Environment Variable:**
  - Sets the `DISPLAY` environment variable to the VNC server display.

- **Run Additional Commands or Configurations:**
  - Custom commands or configurations can be added after setting the `DISPLAY`.

- **Install Packages via Alternative Package Manager:**
  - The script provides a function (`install_package`) for installing a package using an alternative package manager.

## Example Usage:

```bash
./run.sh
