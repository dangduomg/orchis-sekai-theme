#! /usr/bin/env bash

for theme in '-Miku' '-Rin'; do
  case "$theme" in
    -Miku)
      theme_color_dark='#18FFFF'
      theme_color_light='#18FFFF'
      ;;
    -Rin)
      theme_color_dark='#FFEA00'
      theme_color_light='#FFEA00'
      ;;
  esac

  if [[ "$theme" != '' ]]; then
    cp -rf "assets.svg" "assets${theme}.svg"
    sed -i "s/#18FFFF/${theme_color_dark}/g" "assets${theme}.svg"
    sed -i "s/#18FFFF/${theme_color_light}/g" "assets${theme}.svg"
  fi
done

echo -e "DONE!"

