#!/bin/bash

cd ~/apod/;
TODAY=$(date +'%Y%m%d')
wget -N -O ${TODAY}.html http://apod.nasa.gov/apod/astropix.html;
wget -N -O ${TODAY}.jpg http://apod.nasa.gov/apod/$(grep -o "image.*\.jpg" ${TODAY}.html | head -n1);
feh --bg-fill ${TODAY}.jpg
