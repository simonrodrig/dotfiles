#!/bin/bash
. "$HOME/scripts/xlcore/xlcore-env.sh"

# env variables needed for IINACT to correctly launch
export DOTNET_BUNDLE_EXTRACT_BASE_DIR=C:\\IINET\\

# Start the overlay
imgoverlayclient "$HOME/.config/imgoverlayclient.conf" &

# Start IINACT
"$WINE_BIN/wine" "$HOME/.xlcore/wineprefix/drive_c/IINACT.exe"

