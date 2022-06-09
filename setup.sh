#!/bin/bash

until [[ ${ANSWER,,} == "pacman" ]] || [[ ${ANSWER,,} == "apt" ]]; do
	read -p "Use pacman or apt? " ANSWER
done

if [[ ${ANSWER,,} == "pacman" ]]; then
	sudo pacman -S python3 python3-pip python python-pip python3-tk tk sdl2_gfx sdl2_image sdl2_mixer sdl2_net git
else
	sudo apt-get install -y python3 python3-pip python python-pip python3-tk tk libsdl2-dev git gcc-mips-linux-gnu
	pip3 install pysimplegui
fi

pip3 install pysimplegui
pip3 install tk
pip install pysimplegui
pip install tk
sudo cp -R src ~/SM64LinuxLauncher
