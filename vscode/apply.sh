#!/bin/bash

UNIX_VSCODE="$HOME/.config/VSCodium/User"
UNIX_VSCODIUM="$HOME/.config/Code - OSS/User"

configure-path() {
  echo "Setting $1 as configuration path..."
  if [ -d $1 ]; then
    CONFIG_PATH="$1"
    echo "Success!"
  fi
}

POTENTIAL_CFG_PATHS="$UNIX_VSCODE $UNIX_VSCODIUM"

for cfg_path in $POTENTIAL_CFG_PATHS; do
  echo "Attemping to configure $cfg_path..."
  configure-path $cfg_path
done
