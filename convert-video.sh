#!/bin/bash
#-----------------------------------------------------------------------------
# File:          convert-video.sh
# Creation Date: 2015-01-14T00:06:04+0200
# Author:        Samuli Thomasson <samuli.thomasson@paivola.fi>
# License:       WTFPL
#-----------------------------------------------------------------------------

# ./convert-video <infile> <start_at> <duration> <output_to>

ffmpeg \
   -ss $2 -i "$1" -t $3 \
   -sn \
   -acodec libvorbis -ar 48k -aq 5 -ac 2 -qmax 25 \
   -threads 2 \
   "$4"
