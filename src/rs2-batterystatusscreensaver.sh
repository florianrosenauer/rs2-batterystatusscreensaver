#!/bin/bash
#

echo rs2-batterystatusscreensaver started > /var/log/rs2-batterystatusscreensaver.log
echo $0                                   >> /var/log/rs2-batterystatusscreensaver.log

while true; do
    date >> /var/log/rs2-batterystatusscreensaver.log

    #get battery charge level in percent
    BATTERY_LEVEL=$(cat /sys/class/power_supply/axp20x-battery/capacity)
    
    #create slideshow directory in case it doesn't exist
    mkdir -p /home/pi/.emulationstation/slideshow/image

    #use magick convert to create an image in the screensaver slideshow folder
    #simple example (but might burn the LCD as the text is always the same position):
    #convert -size 640x480 -gravity center -background black -fill white -font FreeSans -pointsize 72 label:"Battery: $BATTERY_LEVEL%" /home/pi/.emulationstation/slideshow/image/batterystatus.png

    #more nice one with changing colours and text position like a 'real' screensaver   
    BACKR=$((1 + $RANDOM % 255))
	BACKG=$((1 + $RANDOM % 255))
	BACKB=$((1 + $RANDOM % 255))
	POSX=$((1 + $RANDOM % 200))
	POSY=$((72 + $RANDOM % 400))
	convert -size 640x480 canvas:none -fill "rgb($BACKR,$BACKG,$BACKB)" -stroke black -strokewidth 1 -pointsize 72 -font FreeSans -draw "rectangle 0,0 640,480 fill white text $POSX,$POSY 'Battery: $BATTERY_LEVEL%'" /home/pi/.emulationstation/slideshow/image/batterystatus.png

	#set battery low LED
	if [ $BATTERY_LEVEL -gt 10 ]
	     then
	     echo "battery level $BATTERY_LEVEL - over 10 percent - LED off" >> /var/log/rs2-batterystatusscreensaver.log
	     python /opt/rs2-batterystatusscreensaver/battery_led_off.py
	     else
	     echo "battery level $BATTERY_LEVEL -  less or equal 10 percent - LED on" >> /var/log/rs2-batterystatusscreensaver.log
	     python /opt/rs2-batterystatusscreensaver/battery_led_on.py
	fi

    #wait one minute
    sleep 60
done