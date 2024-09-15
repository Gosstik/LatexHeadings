#!/bin/bash

set -e

SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}" )")"
HEADING_DIR="$(dirname "${SCRIPT_DIR}")"
PROJECT_DIR="$(dirname "${HEADING_DIR}")"

echo "[INFO] cd ${HEADING_DIR}"
cd "${HEADING_DIR}"
git add -A
git commit -m "feat: updates"
git push

# Add new commits from submodule
echo "[INFO] cd ${PROJECT_DIR}"
cd "${PROJECT_DIR}"
git add Headings
git commit -m "update Headings"
git push --recurse-submodules=on-demand
