# kiss — toggle "never sleep" on macOS so the machine (and your AI agent)
# keeps running with the lid closed. Run once to stay awake, again to allow sleep.
kiss() {
  printf '\e[1;31m'; cat ~/.kiss/lips.txt; printf '\e[0m'
  if pmset -g | grep -q "SleepDisabled.*1"; then
    sudo pmset -a disablesleep 0 && echo "   gonna be sleeping when you close the lid"
  else
    sudo pmset -a disablesleep 1 && echo "   gonna work with a closed lid <3"
  fi
}
