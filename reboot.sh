#! /bin/bash
printf "Installing RDP Be Patience... " >&2
{
sudo reboot
} &> /dev/null &&
if sudo apt-get upgrade &> /dev/null
then
    printf "\n\nUpgrade Completed " >&2
else
    printf "\n\nError Occured " >&2
fi
