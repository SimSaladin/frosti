#!/bin/bash

for file in $@
do
	newfilename="${FILE%%.*}" + "hard.mkv"
	mpv -untimed $file -o newfilename
done
