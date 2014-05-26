# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command
52 16 * * * cd /home/username/ && sh data_backup.sh>>test.log| mail -s "Data Backup" youremail@gmail.com
#




#!/bin/sh
notify-send "Data Backup"
rsync -avzt /home/ /media/<path to backup>/
