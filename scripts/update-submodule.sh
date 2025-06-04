#!/bin/bash
set -e

echo "Updating all submodules..."
git submodule update --init --recursive --remote
