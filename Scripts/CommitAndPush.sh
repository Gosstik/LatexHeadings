#!/bin/bash

set -ev

CUR_DIR="$(pwd)"
SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}" )")"
HEADING_DIR="$(dirname "${SCRIPT_DIR}")"
PROJECT_DIR="$(dirname "${HEADING_DIR}")"

cd "${HEADING_DIR}"
git add -A
git commit -m "feat: updates"
git push

cd "${CUR_DIR}"
