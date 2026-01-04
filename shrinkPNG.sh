#!/bin/sh

##
# Shrink a PNG as small as possible.  Ideal for web sharing.
#
# Dependencies:
#   brew install pngquant
#   brew install oxipng
#   brew install zopfli
#
# Usage:
#   ./shrinkPNG.sh <filename>.png
##

pngquant 256 --skip-if-larger --strip --ext=.png --force "$1"
oxipng -o 4 -s "$1"

# Very slow, minimal additional savings
# zopflipng -y "$1" "$1"
