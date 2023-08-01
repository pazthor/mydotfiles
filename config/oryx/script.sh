#!/usr/bin/env sh

sudo cp 50-zsa.rules  /etc/udev/rules.d/50-zsa.rules
sudo groupadd plugdev
sudo usermod -aG plugdev $USER
