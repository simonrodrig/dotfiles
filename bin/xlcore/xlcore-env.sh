#!/bin/bash

export WINEPREFIX="$HOME/.xlcore/wineprefix"
export WINEDLLOVERRIDES=d3d9,dxgi,dxgi.dll=b
export WINEDEBUG=-all
export DXVK_HUD=0
export DXVK_ASYNC=1
export WINEESYNC=1
export WINEFSYNC=1

export WINE_RUNNER="$HOME/.xlcore/compatibilitytool/beta/wine-xiv-staging-fsync-git-7.10.r3.g560db77d"
export WINE_BIN="$WINE_RUNNER/bin"
