#! /bin/bash

names=("Alice" "Bob" "Charlie" "Diana")

for name in "${names[@]}"; do
    echo "Hello, $name!"
done


# grep -q "searchWord" file.txt => search in quiet mode (no output)



release_file=/etc/os-release

if grep -q "Arch" $release_file
then
    # This hostis based on Arch, run the package update command 
    sudo pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    # This hostis based on Ubuntu, run the apt version of the command 
    sudo apt update 
    sudo apt dist-upgrade
fi