# Retrostone 2 Battery Status Display
This is a small addition for your Retrostone 2 to display the battery charge state. It works via the Retrorangepie screensaver slide show function. The RS2 has no battery status display as of Dezember 2020. This extension should make it easier to use your RS2. The Retrostone 2 can be purchased on http://8bcraft.com.
## Installation
You need to copy the three files from the "src" folder somehow to your RS2 and run "install.sh" from Armbian Desktop rights:
1. Download by clicking on the green "Code" Button, select "Download ZIP" and save the file to your local computer
2. Open the ZIP file, go into the "src" folder and copy the three files to an USB stick. Handling depends on your operating system. In Windows you simply mark the three files and use drag'n'drop to put it onto the USB stick. The following steps assume, you did put it directly on the stick (not into a subfolder).
3. Start your RS2 and once you are at the Retrorange menu screen use the right/left buttons to select "RetroPie".
4. Use up/down to go to "Armbian Desktop" and start it using the A key.
5. Connect your USB stick.
6. I strongly recommend to connect a mouse and a keyboard. It is really messy to type the folloing commands using the D-Pad and the virtual keyboard.
7. Double-Click on "File System" and on the USB-Stick (this makes your stick accessible) 
8. Move your mouse to the lower left corner and click on "Applications", then "Terminal Emulator".
9. Type the following command (take care for uppercase/lowercase):
```
cd /media/pi/USB-STICK
```
10. type the following command
```
bash install.sh
```
11. Shutdown and Restart your RS2 using the power button. Done :)

## Usage
You need to set your screensaver to slideshow mode and enable custom images:
1. on the Retrorange menu screen press START
2. go to UI SETTINGS and press A
3. go to SCREENSAVER SETTINGS and press A
4. go to SCREENSAVER BEHAVIOUR and press left/right until it shows "SLIDESHOW"
5. go to SLIDESHOW SCREENSAVER SETTINGS and press A
6. go to USE CUSTOM IMAGES and press A (it must show "ON")

Note: CUSTOM IMAGE DIR must show "/home/pi/.emulationstation/slideshow/image" (to show the full path, press A twice and use right to scroll to the right side).

##Supported Versions
This was tested using the RetrOrangePi_v4.3_Armbian_Retrostone2_PRO_bionic_dev_5.3.13_desktop_v3.img file.

##Known Bugs
If the Screensaver refreshes the image at the same moment the service regenerates it, you will see strange garbage. After 10s (default refresh rate) this will be fine again.

#Thanks
* Based the autoshutdown.service idea from https://github.com/maximilianvoss/retrostone2
* Great commandline image tools http://www.imagemagick.org/script/convert.php

# Links
* other battery ideas see http://retrorangepi.download/forum/archive/index.php/thread-3503.html
