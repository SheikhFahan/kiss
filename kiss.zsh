# kiss — toggle "never sleep" on macOS so the machine (and your AI agent)
# keeps running with the lid closed. Run once to stay awake, again to allow sleep.
# While it's on, ~/.kiss/lidwatch.sh turns the screen off when you close the lid.
kiss() {
  local watch="$HOME/.kiss/lidwatch.sh"
  printf '\e[1;31m'; cat ~/.kiss/lips.txt; printf '\e[0m'
  if pmset -g | grep -q "SleepDisabled.*1"; then
    if sudo pmset -a disablesleep 0; then
      echo "   gonna be sleeping when you close the lid"
      pkill -f "^/bin/sh $watch\$" || true
    fi
  else
    if sudo pmset -a disablesleep 1; then
      echo "   gonna work with a closed lid <3"
      if [ -f "$watch" ] && ! pgrep -f "^/bin/sh $watch\$" >/dev/null; then
        nohup /bin/sh "$watch" >/dev/null 2>&1 &!
      fi
    fi
  fi
}
