#!/usr/bin/env bash
# Uninstalls kiss: lets your Mac sleep again, removes kiss from your zshrc, deletes ~/.kiss.
#
#   curl -fsSL https://raw.githubusercontent.com/SheikhFahan/kiss/main/uninstall.sh | bash
#
# Safe to run more than once.
set -euo pipefail

DEST="$HOME/.kiss"
ZSHRC="${ZDOTDIR:-$HOME}/.zshrc"
LINE='[ -f "$HOME/.kiss/kiss.zsh" ] && source "$HOME/.kiss/kiss.zsh"'
COMMENT='# kiss: keep mac awake with lid closed'

if pmset -g | grep -q "SleepDisabled.*1"; then
  echo "Sleep is still disabled. Turning it back on (needs your password)..."
  sudo pmset -a disablesleep 0
  echo "✓ your Mac can sleep again"
fi

if [ -f "$ZSHRC" ] && grep -qxF -e "$LINE" -e "$COMMENT" "$ZSHRC"; then
  cp "$ZSHRC" "$ZSHRC.kiss-backup"
  tmp="$(mktemp)"
  grep -vxF -e "$LINE" -e "$COMMENT" "$ZSHRC" > "$tmp" || true
  cat "$tmp" > "$ZSHRC"
  rm -f "$tmp"
  echo "✓ removed kiss from $ZSHRC (backup: $ZSHRC.kiss-backup)"
fi

pkill -f "^/bin/sh $DEST/lidwatch.sh\$" && echo "✓ stopped the lid watcher" || true

if [ -d "$DEST" ]; then
  rm -rf "$DEST"
  echo "✓ deleted $DEST"
fi

echo
echo "kiss is gone. Open a new terminal to finish."
