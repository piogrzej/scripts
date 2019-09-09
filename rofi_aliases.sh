#!/bin/bash

#rofi -run-command "/home/piotr/scripts/rofi_aliases.sh \"{cmd}\"" -modi drun -show drun -show-icons -theme glue_pro_green

input="$1"

if [ "$input" == "~" ] #shortcut to $HOME
then
    thunar
elif [ "${input:0:1}" == "\\" ] #run duckduckgo query
then
    firefox "duckduckgo.com/?q=$input"
elif [ -d $input ] #if dir then open it in file browser
then
    thunar $input
else #run app
    $input
fi

