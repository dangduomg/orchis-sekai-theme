#! /usr/bin/env bash

for theme in '-Miku' '-Rin' '-Len' '-Luka'; do
  case "$theme" in
    -Miku)
      theme_color_dark='#18FFFF'
      theme_color_light='#18FFFF'
      ;;
    -Rin)
      theme_color_dark='#FFEA00'
      theme_color_light='#FFEA00'
      ;;
    -Len)
      theme_color_dark='#FFF176'
      theme_color_light='#FFF176'
      ;;
    -Luka)
      theme_color_dark='#FCE4EC'
      theme_color_light='#FCE4EC'
      ;;
  esac

  if [[ "$theme" != '' ]]; then
    rm -rf "thumbnail${theme}.svg"
    cp -rf "thumbnail.svg" "thumbnail${theme}.svg"
    sed -i "s/#1A73E8/${theme_color_dark}/g" "thumbnail${theme}.svg"
    sed -i "s/#3281EA/${theme_color_light}/g" "thumbnail${theme}.svg"
  fi
done

echo -e "DONE!"
