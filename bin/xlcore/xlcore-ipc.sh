#!/bin/bash

. "$HOME/scripts/xlcore/xlcore-env.sh"

IPC_FOLDER="$HOME/scripts"
IPC_PROGRAM="$IPC_FOLDER/winediscordipcbridge.exe"

"$WINE_BIN/wine64" "$IPC_PROGRAM"
