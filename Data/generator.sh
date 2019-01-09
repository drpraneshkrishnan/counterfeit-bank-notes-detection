#!/usr/local/bin/zsh
# USAGE: ./generator.sh input-dir-name output-dir-name

INPUT_DIR=$1
OUTPUT_DIR=$2
i=$(ls $OUTPUT_DIR -1 | wc -l)
for file in ./$INPUT_DIR/*; do
	((i++))
	magick convert $file -colorspace Gray -resize 80% -quality 100 $OUTPUT_DIR/$i.jpg
done

