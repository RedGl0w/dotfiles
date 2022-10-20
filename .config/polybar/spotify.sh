#!/bin/bash

playerctl metadata -f "{{emoji(status)}}  {{ artist }} - {{ title }}" -p spotify
