#! /usr/bin/env bash

INKSCAPE="/usr/bin/inkscape"
OPTIPNG="/usr/bin/optipng"

./make-thumbnails.sh

for theme in '-Miku' '-Rin' '-Len' '-Luka'; do
  SRC_FILE="thumbnail${theme}.svg"
  for color in '' '-Dark'; do
    echo
    echo Rendering thumbnail${theme}${color}.png
    $INKSCAPE --export-id=thumbnail${color} \
              --export-id-only \
              --export-dpi=96 \
              --export-filename=thumbnail${theme}${color}.png $SRC_FILE >/dev/null \
    && $OPTIPNG -o7 --quiet thumbnail${theme}${color}.png
  done
done

for theme in '-Miku' '-Rin' '-Len' '-Luka'; do
  if [[ ${theme} == '' ]]; then
    echo "keep thumbnail.svg"
  else
    rm -rf "thumbnail${theme}.svg"
  fi
done

exit 0
