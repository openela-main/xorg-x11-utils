#!/bin/sh

git clone git://git.freedesktop.org/git/xorg/app/edid-decode
cd edid-decode

REVISION=$(git log | head -n1 | awk '{print $2}' | cut -c 1-8)

rm -fr .git
cd ..
tar -cJf edid-decode-${REVISION}.tar.xz edid-decode
rm -fr edid-decode
