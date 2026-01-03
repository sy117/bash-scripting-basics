#! /bin/bash

logfile="job_results.log"

echo "Scheduled script ran at: $(date)" > $logfile

# scheduling using at command
# at 01:15 -f scheduled_job.sh => linux
# echo "./scheduled_job.sh" | at 01:15 => macOS

# atq => to see scheduled jobs in queue
# atrm <job_id> => to remove scheduled job

# cron job scheduling
# crontab -e => to edit cron jobs
# min hr dom mon dow command
# * * * * * /path/to/scheduled_job.sh => runs every minute
# * 1 * * * /path/to/scheduled_job.sh => runs every day at 1 AM
# 0 0 * * 0 /path/to/scheduled_job.sh => runs every Sunday at midnight