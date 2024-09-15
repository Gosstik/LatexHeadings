#!/bin/bash

set -ev

SCRIPT_DIR="$(realpath "$(dirname "${BASH_SOURCE[0]}" )")"
HEADING_DIR="$(dirname "${SCRIPT_DIR}")"

cd "${HEADING_DIR}"
git add -A
git commit -m "feat: updates"
git push
