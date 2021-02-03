#!/bin/bash
#make sure old versions are stopped
sudo systemctl stop rs2-batterystatusscreensaver.service

#install/configure new files
sudo cp rs2-batterystatusscreensaver.service /etc/systemd/system/
sudo mkdir -p                              /opt/rs2-batterystatusscreensaver
sudo cp -v battery_led_off.py              /opt/rs2-batterystatusscreensaver/
sudo cp -v battery_led_on.py               /opt/rs2-batterystatusscreensaver/
sudo cp -v rs2-batterystatusscreensaver.sh /opt/rs2-batterystatusscreensaver/
sudo chmod 755 /opt/rs2-batterystatusscreensaver/rs2-batterystatusscreensaver.sh

#activate
sudo systemctl enable rs2-batterystatusscreensaver.service
sudo systemctl start  rs2-batterystatusscreensaver.service