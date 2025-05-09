#!/usr/bin/env bash

w=$(identify -format "%w" profile.jpg)
h=$(identify -format "%h" profile.jpg)

borderWidth=15

magick -size ${w}x${h} xc:black -fill white \
    -draw "ellipse $(( w/2 )),$(( h/2 )) $(( w/2-borderWidth )),$(( h/2-borderWidth )) 0,360" \
    mask.png

magick profile.jpg \
   mask.png -alpha off -compose CopyOpacity -composite \
  -fill none -strokewidth 25 -stroke white \
  -draw "ellipse $(( w/2 )),$(( h/2 )) $(( w/2-5 )),$(( h/2-5 )) 0,360" \
  output.png
