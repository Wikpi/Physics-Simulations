#!/bin/bash
set -e

REPO_URL="$1"
TARGET_PATH="$2"

if [[ -z "$REPO_URL" || -z "$TARGET_PATH" ]]; then
  echo "Usage: ./add-submodule.sh <repo-url> <target-path>"
  exit 1
fi

echo "Adding ${TARGET_PATH}..."

git submodule add "$REPO_URL" "$TARGET_PATH"
git commit -am "Add submodule $TARGET_PATH"