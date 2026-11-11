#!/bin/sh
# kiss lid watcher: while kiss keeps the Mac awake, turn the screen off when the lid closes.
# `kiss` starts it. It exits on its own once sleep is allowed again.
#
# Every 2 seconds it reads the power manager once. That one read says both
# whether the lid is closed and whether kiss is still on.

was_closed=no
while :; do
  state=$(ioreg -r -c IOPMrootDomain -d 1)

  case $state in
    *'"SleepDisabled" = Yes'*) ;;
    *) exit 0 ;;                      # kiss is off: nothing left to do
  esac

  case $state in
    *'"AppleClamshellState" = Yes'*)  # lid closed
      [ "$was_closed" = no ] && pmset displaysleepnow
      was_closed=yes ;;
    *)
      was_closed=no ;;
  esac

  sleep 2
done
