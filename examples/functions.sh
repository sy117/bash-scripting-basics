#! /bin/bash


# release_file=/etc/os-release
# logfile=/var/log/upgrader.log
# errorlog=/var/log/upgrader_errors.log

# check_exit_code() {
#     if [ $? -ne 0 ]
#     then
#         echo "An error occurred. Check the error log: $errorlog"
#         exit $1
#     fi
# }

# if grep -q "Arch" $release_file
# then
#     # This host is based on Arch, run the package update command
#     sudo pacman -Syu >> $logfile 2>> $errorlog
#     check_exit_code
# fi

# if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
# then
#     # This host is based on Debian/Ubuntu, run the apt version of the command
#     sudo apt update >> $logfile 2>> $errorlog
#     check_exit_code

#     sudo apt dist-upgrade -y >> $logfile 2>> $errorlog
#     check_exit_code
# fi


# function with arguments
count_nfiles() {
    dir=$1
    count=$(find $dir -type f 2> /dev/null | wc -l)
    echo "Number of files in $dir: $count"
}

count_nfiles $(pwd)

count_objects() {
    # $# => number of arguments passed to the script
    if [ $# -ne 1 ]
    then
        echo "This script requires exactly one argument: the directory path"
        exit 1
    fi
    lines=$(ls -lh $1 | wc -l)
    echo "You have $((lines-1)) objects in the directory $1"
}

count_objects $(pwd)
# wc -l => word count with lines option