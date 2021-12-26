#!/bin/sh

URL="http://ppa.launchpad.net/zorinos/stable/ubuntu/pool/main"
mkdir "debianzorinosinstall"
cd "debianzorinosinstall"
echo "downloading"
curl -LO "${URL}/z/zorin-desktop-themes/zorin-desktop-themes_3.4.2_all.deb"
curl -LO "${URL}/z/zorin-icon-themes/zorin-icon-themes_2.9.4_all.deb"
curl -LO "${URL}/z/zorin-os-wallpapers/zorin-os-wallpapers/zorin-os-wallpapers_16.2_all.deb"
curl -LO "${URL}/z/zorin-os-lite-default-settings/zorin-os-lite-default-settings_16.1.4_all.deb"

sudo dpkg -i "zorin-desktop-themes_3.4.2_all.deb"
sudo dpkg -i "zorin-icon-themes_2.9.4_all.deb"
sudo dpkg -i "zorin-os-wallpaper_16.2_all.deb"
sudo dpkg -i "zorin-os-lite-default-settings_16.1.4_all.deb"

cd ..
rm -rf "debianzorinosinstall/"
