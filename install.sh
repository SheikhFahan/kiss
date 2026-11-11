#!/usr/bin/env bash
# Installs kiss — keeps your Mac awake with the lid closed.
#
#   curl -fsSL https://raw.githubusercontent.com/SheikhFahan/kiss/main/install.sh | bash && exec zsh
#
# Run from a local clone, it copies the files next to it; piped from curl, it downloads them.
# Safe to run more than once.
set -euo pipefail

REPO="SheikhFahan/kiss"
BASE="${KISS_BASE:-https://raw.githubusercontent.com/$REPO/main}"
DEST="$HOME/.kiss"
ZSHRC="${ZDOTDIR:-$HOME}/.zshrc"
LINE='[ -f "$HOME/.kiss/kiss.zsh" ] && source "$HOME/.kiss/kiss.zsh"'

if [ "$(uname)" != "Darwin" ]; then
  echo "kiss only works on macOS (it uses pmset)." >&2
  exit 1
fi

mkdir -p "$DEST"

SRC="${BASH_SOURCE[0]:-}"
if [ -f "$SRC" ] && [ -f "$(dirname "$SRC")/kiss.zsh" ]; then
  DIR="$(cd "$(dirname "$SRC")" && pwd)"
  cp "$DIR/kiss.zsh" "$DIR/lips.txt" "$DIR/lidwatch.sh" "$DEST/"
  echo "✓ copied kiss to $DEST"
else
  for f in kiss.zsh lips.txt lidwatch.sh; do
    curl -fsSL "$BASE/$f" -o "$DEST/$f.tmp"
    mv "$DEST/$f.tmp" "$DEST/$f"
  done
  echo "✓ downloaded kiss to $DEST"
fi

touch "$ZSHRC"
if grep -qxF "$LINE" "$ZSHRC"; then
  echo "✓ $ZSHRC already loads kiss"
else
  printf '\n# kiss: keep mac awake with lid closed\n%s\n' "$LINE" >> "$ZSHRC"
  echo "✓ added kiss to $ZSHRC"
fi

echo
echo "Done. Type: kiss"
echo "(kiss not found? Run: exec zsh)"
