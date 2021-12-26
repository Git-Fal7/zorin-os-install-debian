#!/bin/sh

URL="http://ppa.launchpad.net/zorinos/stable/ubuntu/pool/main"
ARCH="amd64"

mkdir "debianzorinosinstall/"
cd "debianzorinosinstall/"
echo "downloading"
curl -LO "${URL}/z/zorin-desktop-themes/zorin-desktop-themes_3.4.2_all.deb"
curl -LO "${URL}/z/zorin-icon-themes/zorin-icon-themes_2.9.4_all.deb"
curl -LO "${URL}/z/zorin-os-wallpapers/zorin-os-wallpapers/zorin-os-wallpapers-16_16.2_all.deb"
curl -LO "${URL}/z/zorin-os-wallpapers/zorin-os-wallpapers/zorin-os-wallpapers_16.2_all.deb"
curl -LO "${URL}/z/zorin-os-lite-default-settings/zorin-os-lite-default-settings_16.1.4.tar.xz"
curl -LO "${URL}/x/xfce4-zorinmenulite-plugin/xfce4-zorinmenulite-plugin_1.1.4_${ARCH}.deb"

sudo dpkg -i "zorin-desktop-themes_3.4.2_all.deb"
sudo dpkg -i "zorin-icon-themes_2.9.4_all.deb"
sudo dpkg -i "zorin-os-wallpapers-16_16.2_all.deb"
sudo dpkg -i "zorin-os-wallpapers_16.2_all.deb"
sudo dpkg -i "xfce4-zorinmenulite-plugin_1.1.4_${ARCH}.deb"

xz -d -v zorin-os-lite-default-settings_16.1.4.tar.xz
tar -xf zorin-os-lite-default-settings_16.1.4.tar
cd zorin-os-lite-default-settings_16.1.4/
sudo make DESTDIR=/ install
sudo cp /etc/xdg/xdg-zorin-os-lite/* /etc/xdg/
sudo cp -r /etc/xdg/xdg-zorin-os-lite/* /etc/xdg/

cd ..
rm -rf "debianzorinosinstall/"
