#!/usr/bin/env bash

if [ ! -d $HOME/.config/xfce4/desktop.bkp ]; then
    mkdir $HOME/.config/xfce4/desktop.bkp
fi

cp $HOME/.config/xfce4/desktop.bkp/* $HOME/.config/xfce4/desktop/
sleep 12 ######### If your PC startups slowly, you can increase this value
cp $HOME/.config/xfce4/desktop.bkp/* $HOME/.config/xfce4/desktop/
xfdesktop -R

while true
do
	sleep 30
	cp $HOME/.config/xfce4/desktop/* $HOME/.config/xfce4/desktop.bkp/
done


