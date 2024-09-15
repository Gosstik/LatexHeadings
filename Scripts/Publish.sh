#!/bin/bash

set -e

SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}" )")"
HEADING_DIR="$(dirname "${SCRIPT_DIR}")"
PROJECT_DIR="$(dirname "${SCRIPT_DIR}")"

cd "${HEADING_DIR}"
git add -A
git commit -m "feat: updates"
git push

# Add new commits from submodule
cd "${PROJECT_DIR}"
git add Headings
git commit -m "update Headings"

