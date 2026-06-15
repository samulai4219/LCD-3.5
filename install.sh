#!/bin/bash

set -e

echo "=== MPI3501 LCD Driver Installer ==="

while sudo fuser /var/lib/dpkg/lock-frontend >/dev/null 2>&1
do
    echo "Waiting apt..."
    sleep 5
done

sudo apt update
sudo apt install -y git

rm -rf ~/LCD-show

git clone https://github.com/goodtft/LCD-show.git

chmod -R 755 LCD-show

cd LCD-show

sudo ./LCD35-show