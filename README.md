# Honeygain Systemd Service

A systemd service for Honeygain Docker image that loads it automatically at startup.

**Prerequisites:** Make sure you have the Honeygain Docker image and Docker itself installed. You can find installation instructions [here](https://hub.docker.com/r/honeygain/honeygain).

**Dependencies:**
The script requires one of these terminal emulators to be installed since it creates a desktop enty that launches the script using the default terminal emulator.

gnome-terminal
xterm
konsole
kitty
alacritty

Download the bash script, set it to executable and run it

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
