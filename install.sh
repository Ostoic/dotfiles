#!/usr/bin/env bash

# Exit on first error
set -e

# Ensure git submodules are pulled and updated.
git submodule update --init --recursive


POSITIONAL_ARGS=()

ALL=0
while [[ $# -gt 0 ]]; do
  case $1 in
    -a|--all)
      ALL=1
      shift # past argument
      ;;
    -*)
      echo "Unknown option $1"
      exit 1
      ;;
    *)
      POSITIONAL_ARGS+=("$1") # save positional arg
      shift # past argument
      ;;
  esac
done

if [ "$ALL" -eq 1 ]; then
    MODULES=$(find . -maxdepth 1 -type d -exec basename {} \; | grep -vE '^.$' | grep -vE '^.git$' | tr '\n' ' ')
else
    MODULES="${POSITIONAL_ARGS[*]}"
fi

echo Installing "$MODULES" for user "$(whoami)"

for MODULE in $MODULES ; do
    echo stow -t "$HOME" "$MODULE"
done