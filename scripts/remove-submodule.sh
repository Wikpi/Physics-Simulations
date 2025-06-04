#!/bin/bash
set -e

TARGET_PATH="$1"

if [[ -z "$TARGET_PATH" ]]; then
  echo "Usage: ./remove-submodule.sh <path>"
  exit 1
fi

echo "Removing ${TARGET_PATH}..."

git submodule deinit -f "$TARGET_PATH"
git rm -f "$TARGET_PATH"

rm -rf ".git/modules/$TARGET_PATH"
rm -rf "$TARGET_PATH" # Just in case git does not cleanly remove the submodule

git commit -am "Remove submodule $TARGET_PATH"