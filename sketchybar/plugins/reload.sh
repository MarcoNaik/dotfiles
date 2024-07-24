#!/usr/bin/env zsh

case "$SENDER" in
"mouse.clicked")
    sketchybar --reload
    ;;
*)
esac
