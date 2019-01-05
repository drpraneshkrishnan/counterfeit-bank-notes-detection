#!/usr/local/bin/zsh
# USAGE: ./generator.sh input-dir-name output-dir-name

INPUT_DIR=$1
OUTPUT_DIR=$2
i=$(ls $OUTPUT_DIR -1 | wc -l)
echo $e
echo $INPUT_DIR
echo $OUTPUT_DIR
for file in ./$INPUT_DIR/*; do
	((i++))
	echo $file
	magick convert $file -colorspace Gray -resize 35% -quality 90 $OUTPUT_DIR/$i.jpg
done

