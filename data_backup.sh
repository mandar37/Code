#!/bin/sh
notify-send "Data Backup"
rsync -avzt /home/ /media/<path to backup>/
