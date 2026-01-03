#! /bin/bash

# Check to make sure user has entered exactly two arguments
if [ $# -ne 2 ]
then
    echo "Usage: backup_script.sh <source_directory> <backup_directory>"
    echo "Please try again."
    exit 1
fi

# Check to see if rsync is installed
if ! command -v rsync > /dev/null 2>&1
then
    echo "This script requires rsync to be installed."
    echo "Please install rsync and try again."
    exit 2
fi

# Capture the current date and store itin the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/$current_date --delete --dry-run"

#avb => archive, verbose, backup
#--backup-dir => directory to store backups
#--delete => delete files in backup that are deleted in source
#--dry-run => simulate the backup without making any changes

$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log
