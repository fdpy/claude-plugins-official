#!/usr/bin/env bash
# Convert a Marp Markdown file to PDF, PPTX, or HTML.
# Usage: ./convert.sh <input.md> [pdf|pptx|html] [output-dir]

set -euo pipefail

INPUT="${1:-}"
FORMAT="${2:-pdf}"
OUTDIR="${3:-.}"

if [[ -z "$INPUT" ]]; then
  echo "Usage: $0 <input.md> [pdf|pptx|html] [output-dir]"
  exit 1
fi

if ! command -v marp &>/dev/null; then
  echo "Marp CLI not found. Install it with:"
  echo "  npm install -g @marp-team/marp-cli"
  exit 1
fi

BASENAME="$(basename "${INPUT%.md}")"
OUTPUT="$OUTDIR/$BASENAME.$FORMAT"

mkdir -p "$OUTDIR"

case "$FORMAT" in
  pdf)
    marp "$INPUT" --pdf -o "$OUTPUT"
    ;;
  pptx)
    marp "$INPUT" --pptx -o "$OUTPUT"
    ;;
  html)
    marp "$INPUT" --html -o "$OUTPUT"
    ;;
  *)
    echo "Unknown format: $FORMAT. Use pdf, pptx, or html."
    exit 1
    ;;
esac

echo "Exported: $OUTPUT"
