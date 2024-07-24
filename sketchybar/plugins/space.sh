#!/bin/sh

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

if [ "$SELECTED" = true ]; then
  BACKGROUND_COLOR="0xfff5a97f"
  ICON_COLOR="0xff24273a"
else
  BACKGROUND_COLOR="0x9924273a"
  ICON_COLOR="0xffcad3f5"
fi

sketchybar --set "$NAME" background.color="$BACKGROUND_COLOR" icon.color="$ICON_COLOR"