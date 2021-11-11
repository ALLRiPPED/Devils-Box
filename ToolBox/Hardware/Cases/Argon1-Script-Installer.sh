#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/tools-launch.txt
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Tool";
else
  echo "Exiting Now";
fi
curl https://download.argon40.com/argon1.sh | bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/ToolBox/Hardware/a1.txt
sleep 6
sudo rm /home/pi/RetroPie/retropiemenu/Devils-Box/ToolBox/Hardware/Argon1-Script-Installer.sh
sudo rm /home/pi/RetroPie/retropiemenu/Devils-Box/ToolBox/Hardware/a1.txt
sudo mv /home/pi/RetroPie/retropiemenu/Devils-Box/ToolBox/Hardware/.Argon1-Config.sh /home/pi/RetroPie/retropiemenu/Devils-Box/ToolBox/Hardware/Argon1-Config.sh
sudo reboot