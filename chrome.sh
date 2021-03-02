printf "Dang cai dat... " >&2
{
sudo adduser long chrome-remote-desktop
} &> /dev/null &&
printf "\nXong " >&2 ||
printf "\nLoi " >&2
printf '\nDi den https://remotedesktop.google.com/headless  Sao chep ma Debian Linux va\n'
read -p "Dan vao day: " CRP
su - long -c """$CRP"""
printf 'Da hoan tat, kiem tra tai https://remotedesktop.google.com/access/ \n\n'
if sudo apt-get upgrade &> /dev/null
then
    printf "Hoan thanh. " >&2
else
    printf "\n\nLoi. " >&2
fi
