#!/bin/sh

##
# Shrink a PNG as small as possible.  Ideal for web sharing.
#
# Dependencies:
#   brew install pngquant
#   brew install zopfli
#
# Usage:
#   ./shrinkPNG.sh <filename>.png
##

pngquant 64 --skip-if-larger --strip --ext=.png --force "$1"
zopflipng -y "$1" "$1"
