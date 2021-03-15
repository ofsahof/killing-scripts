#!/bin/bash
read -p "Disk seçin(örn:/dev/sda)" DISK
sudo dd if=/dev/zero of=$DISK
