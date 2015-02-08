#!/bin/bash
#-----------------------------------------------------------------------------
# File:          convert-video.sh
# Creation Date: 2015-01-14T00:06:04+0200
# Author:        Samuli Thomasson <samuli.thomasson@paivola.fi>
# License:       WTFPL
#-----------------------------------------------------------------------------

# ./convert-video <infile> <startfrom> <endat> <outputto>

ffmpeg -i "$1" -ss $2 -to $3 \
   -acodec libvorbis -aq 5 -ac 2 -qmax 25 \
   -threads 2 \
   "$4"
