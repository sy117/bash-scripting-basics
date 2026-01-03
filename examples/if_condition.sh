#! /bin/bash

# -eq => equals to
# -ne => not equals to
# -gt => greater than
# -ge => greater than or equals to
# -lt => less than
# -le => less than or equals to

num=300
if [ $num -gt 100 ] # [] only required for test conditions
then
    echo "If condition is true"
else
    echo "If condition is false"

fi

# check if file exists {-f => file, -d => directory}

if [ -f ~/abc.excalidraw ]
then
    echo "File exists"
else
    echo "File does not exist"
fi

# check if htop is installed

# command=/opt/homebrew/bin/htop

# if [ -f $command ]
# then
#     echo "$command is available, let's run it..."
# else
#     echo "$command is Not available, installing it..."
#     brew install htop
# fi

# $command

command=htop

if command -v $command
then
    echo "$command is available, let's run it..."
else
    echo "$command is Not available, installing it..."
    brew install $command
fi

$command