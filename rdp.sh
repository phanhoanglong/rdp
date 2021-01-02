#! /bin/bash
printf "Dang tao moi truong..." >&2
{
sudo useradd -m long
sudo adduser long sudo
echo 'long:1230' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
sudo add-apt-repository ppa:mozillateam/ppa -y
sudo apt-get install firefox -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install nautilus nano -y 
sudo adduser long chrome-remote-desktop
} &> /dev/null &&
printf "\nCai dat hoan tat " >&2 ||
printf "\nLoi cai dat " >&2
printf '\nDi den https://remotedesktop.google.com/headless  Sao chep doan ma Debian Linux va dan xuong duoi\n'
read -p "Dan vao day: " CRP
su - long -c """$CRP"""
printf 'Da hoan tat, kiem tra tai https://remotedesktop.google.com/access/ \n\n'
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nHoan thanh " >&2
else
    printf "\n\nLoi nang cap " >&2
fi
