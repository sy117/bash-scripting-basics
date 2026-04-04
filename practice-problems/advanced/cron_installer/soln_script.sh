#!/bin/bash

# Path to python script
SCRIPT_PATH="$(pwd)/main.py"

# Make python script executable
chmod +x "$SCRIPT_PATH"

# Cron job => runs every minutes
JOB="* * * * * python3 $SCRIPT_PATH >> $(pwd)/output.log 2>&1 #MY_JOB"

if [ "$1" = "uninstall" ]; then
    # Remove the job
    crontab -l 2>/dev/null | grep -v "#MY_JOB"
    echo "Cron job removed"
else
    # Check if job already exist
    crontab -l 2>/dev/null | grep -q "#MY_JOB"

    if [ $? -eq 0 ]; then
        echo "Cron job already exists"
    else
        # Add job
        (crontab -l 2>/dev/null; echo "$JOB") | crontab -
        echo "Cron job added"
    fi
fi


# Example usage:
# ./soln_script.sh
# ./soln_script.sh install
# ./soln_script.sh uninstall




## COMMON CRONTAB COMMANDS:
#
# 1. List cron jobs
#    crontab -l
#
# 2. Edit cron jobs
#    crontab -e
#
# 3. Remove all cron jobs
#    crontab -r
#
# 4. Manage cron for another user (requires sudo)
#    crontab -u username -l
#    crontab -u username -e
#    crontab -u username -r