#!/bin/sh

file_name = pic.jpg

prefix = picture-
extension = .jpg
new_file_name = $(date +%s)
NewFileName = $prefix.$new_file_name.$extension

raspistill -o temp/$file_name -t 3000 -w 1920 -h 1080

cp temp/$file_name pictures/$NewFileName
