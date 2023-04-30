#!/bin/bash

reply=1

while [ $reply -eq 1 ]; do

    fileName=$(find . -maxdepth 1 -name 'config*.json' | tr ' ' '\n' | zenity --list --title "Select your config-xxx.json" --text "Finding all header files.." --column "Files")

    if [ "$fileName" != "" ]; then
        echo $fileName config file is selected
        ./webui.sh --config $fileName

        reply=0
    fi
    reply=0
    break
done
