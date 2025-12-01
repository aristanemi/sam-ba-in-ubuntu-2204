#!/usr/bin/env bash
set -o errexit

./sam-ba -l verbose:all -p secure:ttyACM0 -d sama5d35 -a nandflash:1:8:0xc1e04e07