#!/bin/bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 5B7FC40A404FAD98548806028AC9B4BBBAB4900B
sudo add-apt-repository http://ppa.launchpad.net/mmstick76/alacritty/ubuntu
sudo apt update
sudo apt install alacritty
