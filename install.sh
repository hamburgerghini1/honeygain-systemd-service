#!/bin/bash

# Inform the user about downloading and copying the .service file
echo "Downloading honeygain-docker.service file..."
# Replace the URL with the actual URL where the service file is located
wget -O honeygain-docker.service https://raw.githubusercontent.com/hamburgerghini1/honeygain-systemd-service/main/honeygain-docker.service
echo "Copying honeygain-docker.service to /etc/systemd/system..."
sudo cp honeygain-docker.service /etc/systemd/system/
echo "honeygain-docker.service copied successfully."


# Inform the user about enabling and starting the service
echo "Enabling honeygain-docker.service..."
sudo systemctl enable honeygain-docker.service
echo "Starting honeygain-docker.service..."
sudo systemctl start honeygain-docker.service
echo "honeygain-docker.service enabled and started successfully."

# Check if the service is running and inform the user
echo "Checking the status of honeygain-docker.service..."
sudo systemctl status honeygain-docker.service

# Removing unnecessary .service file from downloads folder
echo "Removing the downloaded file"
rm honeygain-docker.service

# Determine a suitable terminal emulator
TERMINAL=""
if command -v x-terminal-emulator > /dev/null; then
    TERMINAL="x-terminal-emulator"
elif command -v gnome-terminal > /dev/null; then
    TERMINAL="gnome-terminal"
elif command -v konsole > /dev/null; then
    TERMINAL="konsole"
elif command -v alacritty > /dev/null; then
    TERMINAL="alacritty"
elif command -v kitty > /dev/null; then
    TERMINAL="kitty"
fi

# Downloading Honeygain logo from their website for the desktop file
echo "Downloading Honeygain logo from their website for the desktop file"
wget https://webassets.honeygain.com/uploads/2021/07/28123856/Honeygain-Logo.zip

echo "Unzipping the logo archive and moving it to your Pictures folder"
unzip Honeygain-Logo.zip
cd Logo/Bee || exit
cp hg_logo_icon_color_dark.png Pictures
rm hg_logo_icon_color_dark.png
cd ..
cd ..
cd ..
sudo rm -rf Logo
sudo rm Honeygain-Logo.zip

# Create .desktop file
{
    echo "[Desktop Entry]"
    echo "Type=Application"
    echo "Terminal=true"
    echo "Name=Honeygain Service"
    echo "Exec=$TERMINAL -e 'sudo systemctl start honeygain-docker.service && read -p \"Press [Enter] to close...\"'"
    echo "Icon=$USER/Pictures/hg_logo_icon_color_dark.png"
    echo "Categories=Network;"
} >> honeygain.desktop
chmod +x honeygain.desktop