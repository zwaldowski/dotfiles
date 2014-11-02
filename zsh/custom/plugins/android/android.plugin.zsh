_homebrew-installed() {
  type brew &> /dev/null
}

_rbenv-from-homebrew-installed() {
  brew --prefix rbenv &> /dev/null
}

FOUND_SDK=0
androidsdkdirs=("/opt/android-sdk" "/usr/local/opt/android-sdk" "$HOME/Applications/Android Studio.app/sdk" "/Applications/Android Studio.app/sdk" )
if _homebrew-installed && _rbenv-from-homebrew-installed ; then
    androidsdkdirs=($(brew --prefix android-sdk) "${androidsdkdirs[@]}")
fi

for sdkdir in "${androidsdkdirs[@]}" ; do
  if [ -d $sdkdir/bin -a $FOUND_SDK -eq 0 ] ; then
    FOUND_SDK=1
    if [[ $ANDROID_HOME = '' ]]; then
      ANDROID_HOME=$sdkdir
    fi
    export ANDROID_HOME
    export PATH=${sdkdir}/platform-tools:${sdkdir}/tools:$PATH
  fi
done
unset sdkdir
