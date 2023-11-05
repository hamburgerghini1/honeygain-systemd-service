# Honeygain Systemd Service

A systemd service for Honeygain Docker image that loads it automatically at startup.

**Prerequisites:** Make sure you have the Honeygain Docker image and Docker itself (and systemd lmao) installed. You can find installation instructions [here](https://hub.docker.com/r/honeygain/honeygain).

**Dependencies:**
The script requires one of these terminal emulators to be installed since it creates a desktop entry that launches the script using the default terminal emulator.

gnome-terminal
xterm
konsole
kitty
alacritty

Download the bash script, set it to executable and run it

The script is tested on my main fedora 38 desktop and arch and ubuntu 22.04.3 using VMs.

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
    sudo ./install.sh


# DISCLAIMER
I wasn't sure if using Honeygain logo in a project like this was against their TOS / rules from their brand assets page https://www.honeygain.com/brand-assets
If that's the case. Contact me somehow and I will remove the project or at least set it to private

I will also provide my referral link https://tinyurl.com/honeygain-referral

I made this project mainly for fun and for my own use.
