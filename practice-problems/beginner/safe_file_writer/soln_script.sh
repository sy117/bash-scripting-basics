#! /bin/bash

TIMESTAMP_FORMAT='+%Y-%m-%d %H:%M:%S'
export TIMESTAMP_FORMAT

file=$1
text=$2

if [ $# -ne 2 ]
then
    echo "Usage: $0 <file_path> <text>"
    exit 1
fi

(
    flock -x 200
    timestamp=$(date "$TIMESTAMP_FORMAT")
    echo "[$timestamp] $text" >> "$file"
) 200>>"$file"

# Example usage:
# ./soln_script.sh "logfile.txt" "User logged in"
# ./soln_script.sh "logfile.txt" "Server restarted"
