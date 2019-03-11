#!/bin/sh
# for macOS.
# 1. brew install socat
# 2. run this script.
# 3. XQuartz > X11 Preference > Security > CHECK Allow connections from network clients
# 4. restart XQuartz

socat -d TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
