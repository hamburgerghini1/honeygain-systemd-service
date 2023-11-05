# honeygain-systemd-service
A systemd service for Honeygain docker image that loads it automatically at startup

I expect that you have already honeygain docker image (and docker itself obviously) installed
![Installation instructions](https://hub.docker.com/r/honeygain/honeygain)

1. Download the .service file
2. Copy it to /etc/systemd/system
```javascript
sudo cp honeygain-docker.service /etc/systemd/system
```
 
3. Run these commands
   ```javascript
sudo systemctl enable honeygain-docker.service
```

```javascript
sudo systemctl start honeygain-docker.service
```

4. Check if the service is running

```javascript
sudo systemctl status honeygain-docker.service
```
