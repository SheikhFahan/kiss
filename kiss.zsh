# kiss — toggle "never sleep" on macOS so the machine (and your AI agent)
# keeps running with the lid closed. Run once to stay awake, again to allow sleep.
kiss() {
  printf '\e[1;31m'; cat ~/.kiss/lips.txt; printf '\e[0m'
  if pmset -g | grep -q "SleepDisabled.*1"; then
    sudo pmset -a disablesleep 0 && echo "   thanks for the rest"
  else
    sudo pmset -a disablesleep 1 && echo "   see you on the other side"
  fi
}
