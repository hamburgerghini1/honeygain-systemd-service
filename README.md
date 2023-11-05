# Honeygain Systemd Service

A systemd service for Honeygain Docker image that loads it automatically at startup.

**Prerequisites:** Make sure you have the Honeygain Docker image and Docker itself installed. You can find installation instructions [here](https://hub.docker.com/r/honeygain/honeygain).

Download the bash script, set it to executable and run it

# Honeygain Systemd Service Setup

This repository provides a simple setup script for running Honeygain as a systemd service using Docker.

## Usage

1. **Download the Setup Script:**
   
   Download the setup script to your system using `wget`:

   ```bash
   wget https://raw.githubusercontent.com/hamburgerghini1/honeygain-systemd-service/main/install.sh

2. **Set it to executable**
   
    ```bash
     chmod +x install.sh

3. **Run the script**

    ```bash
    ./install.sh
