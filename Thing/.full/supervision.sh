#!/bin/bash
cat /home/pi/RetroPie/retropiemenu/Devils-Box/setup/txts/packs-launch.txt
wget --spider https://archive.org/download/thing-box/Retro-Devils-Supervision.7z
read -p "Do You Wish To Continue (y/n)?" CONT
if [ "$CONT" = "y" ]; then
  echo "Starting Download";
else
  echo "Rebooting Now";sudo reboot
fi
cd
mkdir test
cd test
wget -c https://archive.org/download/thing-box/Retro-Devils-Supervision.7z -q --show-progress
7z x -y -aoa /home/pi/test/Retro-Devils-Supervision.7z
sudo rm -r /home/pi/RetroPie/roms/supervision
sudo mv supervision /home/pi/RetroPie/roms
sudo rm "Retro-Devils-Supervision.7z"
cd ..
sudo rm -R test
sudo reboot 

