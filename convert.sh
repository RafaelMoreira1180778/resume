#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

INPUT="cv.drawio"
OUTPUT="cv.pdf"

drawio "$INPUT" \
    --export \
    --format pdf \
    --output "$OUTPUT" 2>&1 >/dev/null

echo
echo "========================="
echo "GENERATED THE CV TO:"
echo "$PWD"/"$OUTPUT"
echo "========================="
echo
