#!/usr/bin/env bash
set -o errexit
echo "Starting udevd..."
/lib/systemd/systemd-udevd --daemon
echo "Triggering udev events..."
udevadm trigger
echo "Running sam-ba..."
./sam-ba -p secure:ttyACM0 -d sama5d35 -a nandflash:1:8:0xc1e04e07