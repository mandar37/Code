#
# Name of File : DVD_auto_copy.sh
# DVD Copy shell script
#
clear
echo "Knowledge is Power"
eject -t cdrom
sleep 30
rsync -avzt --progress /media/cdrom/ /<path to Save>/DVD$1/
notify-send "Video Backup"
echo "DVD Compleated copy"
eject cdrom
exit 0
