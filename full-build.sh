#!/bin/bash
source $HOME/.ndkrc

APK=com.declarative.games.epidemic-debug.apk
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ~/ghc-build/epidemic-game
$HOME/.ghc/android-14/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-cabal install -fandroid
[ $? -eq 0 ] || exit 1

cd $THIS_DIR

cp /home/androidbuilder/.ghc/android-14/arm-linux-androideabi-4.8/cabal/lib/arm-linux-android-ghc-7.8.2/Epidemic-0.0.1/libHSEpidemic-0.0.1.a \
  $THIS_DIR/jni/epidemic-libs/armeabi/libHSEpidemic-0.0.1.a

ndk-build clean && ndk-build -j9 && ant debug
[ $? -eq 0 ] || exit 1


scp $THIS_DIR/bin/$APK 'mac:~/tmp'
ssh mac "adb root"
ssh mac 'cd $HOME/tmp && adb push $APK /data/app'
