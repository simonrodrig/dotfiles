#!/bin/bash

# env variables
export MANGOHUD=1
export DXVK_FRAME_RATE=144

# Start IPC bridge for discord rich presence
"$HOME/scripts/xlcore/xlcore-ipc.sh" &

# Start XIVLauncher with ACT overlay
#imgoverlay XIVLauncher.Core

XIVLauncher.Core

