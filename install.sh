#!/usr/bin/env bash
# Symlink every skill folder in this repo into Claude and Cursor skill dirs.
# Usage: ./install.sh [--dry-run]
set -euo pipefail

DRY=0
[ "${1:-}" = "--dry-run" ] && DRY=1

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TARGETS=("$HOME/.claude/skills" "$HOME/.cursor/skills")

run() { if [ "$DRY" = 1 ]; then echo "[dry-run] $*"; else "$@"; fi; }

for target in "${TARGETS[@]}"; do
  if [ ! -d "$target" ]; then
    echo "skip: $target does not exist"
    continue
  fi
  for skill in "$REPO"/*/; do
    skill="${skill%/}"
    name="$(basename "$skill")"
    [ -f "$skill/SKILL.md" ] || continue
    link="$target/$name"
    if [ -L "$link" ]; then
      if [ "$(readlink "$link")" = "$skill" ]; then
        echo "ok:   $link"
        continue
      fi
      echo "fix:  $link (relinking)"
      run ln -sfn "$skill" "$link"
    elif [ -e "$link" ]; then
      echo "WARN: $link exists and is not a symlink; leaving it alone"
    else
      echo "link: $link -> $skill"
      run ln -s "$skill" "$link"
    fi
  done
done
