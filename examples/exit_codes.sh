#! /bin/bash

# directory=/etc

# if [ -d $directory ]
# then
#     echo "$directory exists"
#     exit 0
# else
#     echo "$directory does not exist"
#     exit 1
# fi

# echo "Exit code of last command: $?"


package=fork   # git client

brew install --cask $package >> pkg_install_results.log

if [ $? -eq 0 ]
then
    echo "$package installed successfully"
    echo "The new command is available here:"
    which $package
else
    echo "Failed to install $package." >> pkg_install_failures.log
fi

