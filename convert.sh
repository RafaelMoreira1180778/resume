#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

INPUT="cv.drawio"
OUTPUT="cv"

drawio "$INPUT" \
    --export \
    --format pdf \
    --output "$OUTPUT".pdf 2>&1 >/dev/null

echo
echo "========================="
echo "GENERATED THE CV TO:"
echo "$PWD"/"$OUTPUT"
echo "========================="
echo
