#!/bin/bash
sudo cp rs2-batterystatusscreensaver.service /etc/systemd/system/
sudo cp rs2-batterystatusscreensaver.sh /usr/bin/
sudo chmod 755 /usr/bin/rs2-batterystatusscreensaver.sh
sudo systemctl enable rs2-batterystatusscreensaver.service
sudo systemctl stop   rs2-batterystatusscreensaver.service
sudo systemctl start  rs2-batterystatusscreensaver.service