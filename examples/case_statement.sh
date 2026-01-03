#! /bin/bash

echo "Select your favourite OS"
echo "1) Ubuntu"
echo "2) Windows"
echo "3) MacOS"

read os_choice

case $os_choice in
    1) echo "You selected Ubuntu";;
    2) echo "You selected Windows";;
    3) echo "You selected MacOS";;
    *) echo "Invalid selection"
esac