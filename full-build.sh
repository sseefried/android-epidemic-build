#!/bin/bash
source $HOME/.ndkrc

GAME_SRC=`echo ~/ghc-build/epidemic-game`
PREFIX=$HOME/.ghc/android-14/arm-linux-androideabi-4.8

APK=com.declarative.games.epidemic.beta-release.apk
THIS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $GAME_SRC
$PREFIX/bin/arm-linux-androideabi-cabal install -fandroid
[ $? -eq 0 ] || exit 1

cd $THIS_DIR

echo "[+] Copy across assets"
cp $GAME_SRC/assets/* assets

cp $PREFIX/cabal/lib/arm-linux-android-ghc-7.8.2/Epidemic-0.0.1/libHSEpidemic-0.0.1.a \
  $THIS_DIR/jni/epidemic-libs/armeabi/libHSEpidemic-0.0.1.a

ndk-build clean && ndk-build -j9 && ant release
[ $? -eq 0 ] || exit 1

scp $THIS_DIR/bin/$APK 'mac:~/tmp'
ssh mac "adb root"
ssh mac "cd \$HOME/tmp && adb push $APK /data/app"
