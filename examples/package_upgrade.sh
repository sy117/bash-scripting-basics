#! /bin/bash

release_file=/etc/os-release

# macOS check
if uname -s | grep -q "Darwin"
then
    # This host is macOS, run Homebrew update
    if command -v brew >/dev/null 2>&1
    then
        brew update
        brew upgrade
    fi
fi

# Linux checks
if [ -f $release_file ]
then
    if grep -q "Arch" $release_file
    then
        # This host is based on Arch, run the package update command
        sudo pacman -Syu
    fi

    if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
    then
        # This host is based on Debian/Ubuntu, run the apt version of the command
        sudo apt update
        sudo apt dist-upgrade
    fi
fi
