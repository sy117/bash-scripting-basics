#! /bin/bash

directory=$1
days=$2
dry_run=false

if [ $# -lt 2 ]
then
    echo "Usage: $0 <directory> <days> [--dry-run]"
    exit 1
fi

if [ "$3" = "--dry-run" ]
then
    dry_run=true
fi

if [ ! -d "$directory" ]
then
    echo "Directory does not exist: $directory"
    exit 1
fi

if [ "$dry_run" = true ]
then
    echo "Dry-run mode: Files older than $days days in $directory"
    find "$directory" -type f -mtime +$days -print
else
    echo "Deleting files older than $days days in $directory"
    find "$directory" -type f -mtime +$days -delete
fi

# Example usage:
# ./soln_script.sh "$(pwd)/temp" 5 --dry-run
# ./soln_script.sh "$(pwd)/temp" 2
