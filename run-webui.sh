#!/bin/bash

items=(1 "Profile 1"
       2 "Profile 2")

while choice=$(dialog --title "$TITLE" \
                 --menu "Please select" 10 40 3 "${items[@]}" \
                 2>&1 >/dev/tty)
    do
    case $choice in
        1) ;; webui --config config1.json
        2) ;; webui --config config2.json
        *) ;; # some action on other
    esac
done
clear # clear after user pressed Cancel
