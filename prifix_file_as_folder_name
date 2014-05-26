#
# This Script attached parent folder name to inter file as perfix 
# First test this script in /tmp folder 
#

for parantfolder in `ls -rtd */`
do
cd $parantfolder
for filename in `ls -rt`
do
mv $filename ${parantfolder%?}$filename
#echo $filename
#echo ${parantfolder%?}$filename
done
cd ..
done
exit 0
