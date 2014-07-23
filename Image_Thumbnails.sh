#!/bin/bash
FILES="$@"
for i in $FILES
do
echo "Prcoessing image $i ..."
/usr/bin/convert -thumbnail 200 $i thumb.$i
done


#Install imagemagick, use apt-get command as follows:
# apt-get install imagemagick

#You need to pass -thumbnail argument to convert command:
#convert thumbnail <width>x<height> image.png thumbnail.png

#So to create a thumbnail of the abc.png image with 200px width, you need to type:
#$ convert -thumbnail 200 abc.png thumb.abc.png

#To create a thumbnail of the abc.png image with 200px height, you need to type:
#$ convert -thumbnail x200 abc.png thumb.abc.png
