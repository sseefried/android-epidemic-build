#!/bin/bash

source $HOME/.ndkrc

APK=org.libsdl.testgles-debug.apk
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ndk-build -j9
ant debug

scp $THIS_DIR/bin/$APK 'mac:~/tmp'
ssh mac 'cd $HOME/tmp && adb push org.libsdl.testgles-debug.apk /data/app'
