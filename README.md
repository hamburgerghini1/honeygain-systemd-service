# Honeygain Systemd Service

A systemd service for Honeygain Docker image that loads it automatically at startup.

**Prerequisites:** Make sure you have the Honeygain Docker image and Docker itself installed. You can find installation instructions [here](https://hub.docker.com/r/honeygain/honeygain).

```bash
# Download the .service file and copy it to /etc/systemd/system
wget https://raw.githubusercontent.com/hamburgerghini1/honeygain-systemd-service/main/honeygain-docker.service
sudo cp honeygain-docker.service /etc/systemd/system/

# Enable and start the service
sudo systemctl enable honeygain-docker.service
sudo systemctl start honeygain-docker.service

# Check if the service is running
sudo systemctl status honeygain-docker.service


There is also the bash script
