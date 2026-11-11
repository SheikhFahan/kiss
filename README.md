```text
╭───╮╭───╮╭───╮╭───╮
│ k ││ i ││ s ││ s │
╰───╯╰───╯╰───╯╰───╯
```

**lid closed · Mac awake · agent still going**

Keep your Mac awake with the lid shut, so long jobs like an AI agent keep running. `kiss` once to stay up, `kiss` again to let it sleep.

```text
  lid closed  ──▶  Mac sleeps  ──▶  agent dies mid-task. classic.

  $ kiss

  lid closed  ──▶  Mac awake   ──▶  agent keeps going   ◀ you are here
```

macOS only. Plain zsh, nothing to install first.

## 01 · install

```sh
curl -fsSL https://raw.githubusercontent.com/SheikhFahan/kiss/main/install.sh | bash
```

Open a new terminal, then type `kiss`. Update: run the same line again.

From a clone instead:

```sh
git clone git@github.com:SheikhFahan/kiss.git
cd kiss
./install.sh
```

## 02 · use

```console
$ kiss
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⡽⠟⠛⠻⣶⣄⠀⢀⣐⣒⣒⣶⣴⣾⡿⢷⣶⣽⡢⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⣿⣿⢿⠋⠀⠀⠀⠀⠀⠉⠛⠓⠒⠛⠚⠛⠉⣿⠀⠀⣧⡏⠻⣷⣽⡦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣻⡾⠋⣇⢸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠉⠀⠀⢸⠙⠻⣿⣷⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⠋⠈⠀⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠈⡿⣷⣽⣇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣞⡿⠟⣟⠀⠀⠀⠀⠀⠀⠀⠀⠸⡆⠀⠀⠀⣆⠀⠀⡀⢸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠈⠻⣯⡳⣄⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣽⠟⠁⠀⠘⠃⠀⠀⠀⠀⢰⡀⠀⠀⢹⡀⠀⠀⢸⡄⢀⣇⡾⣠⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣾⣅⠀⠀⠀⠀
⣀⣀⣠⡴⠿⣅⠐⢦⡀⠀⠀⠀⠲⣄⠀⠀⣙⣦⣶⣾⣻⣶⣶⠾⠿⠾⢿⣿⣿⣻⢷⣢⢤⣀⠀⠀⠀⠀⠀⠀⠀⡀⠀⣴⠛⣿⣷⣄⡀⠀
⠹⠿⢿⣷⣦⣼⣷⣤⣻⣶⣤⣀⣀⣬⣷⡯⠷⠾⢿⣿⣭⣄⣀⣀⣀⣀⣀⣤⣭⡿⠿⢾⣿⣿⣿⣦⣤⣤⣤⣶⢾⡷⣿⣷⣾⣷⣿⡿⠿⠟
⠀⠀⠘⣿⡝⣿⡿⢻⣿⡿⢩⡞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠰⡄⠀⠀⠀⠀⠘⢦⠹⣮⢷⠹⣷⣿⠀⠀⠀
⠀⠀⠀⠙⣷⣿⠁⡞⣾⠀⡞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⡇⠀⠀⠀⠀⠀⢸⡆⢸⢸⣦⡟⠁⠀⠀⠀
⠀⠀⠀⠀⠈⢻⣄⡏⣿⠀⡇⠀⠀⠀⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀⢐⣧⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⣼⡇⠘⣼⠏⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠙⠻⣧⣧⢣⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠸⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⢹⣠⡾⠃⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣧⡘⣆⠀⠀⠘⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⣴⣷⣿⡋⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⠷⣤⣀⣹⣄⠀⠀⠀⠀⠀⠀⡇⠀⠀⢀⠀⡆⠀⠀⣀⣴⣧⣴⣟⠯⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠽⠿⠿⠷⠶⢤⣤⣴⣿⣦⣶⣾⣿⣷⣾⣻⣿⠝⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠉⠛⠛⠛⠛⠛⠊⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
Password:
   gonna work with a closed lid <3
```

Close the lid. The agent keeps going.

Done? Kiss it goodnight:

```console
$ kiss
Password:
   gonna be sleeping when you close the lid
```

The lips print every time, in red. Left out above to save scrolling.

## 03 · how it works

```text
          ┌─ sleep allowed ─▶ sudo pmset -a disablesleep 1 ─▶ awake, lid or not
  kiss ───┤
          └─ sleep blocked ─▶ sudo pmset -a disablesleep 0 ─▶ sleeps normally again
```

One macOS power setting, flipped for battery and charger alike. Nothing runs in the background. Files live in `~/.kiss`, and one line in `~/.zshrc` loads them.

Check which side you're on: `pmset -g | grep SleepDisabled`. `1` means staying awake.

## !! · don't bag it awake

```text
  ╔════════════════════════════════════════════════════╗
  ║ !! DON'T BAG IT AWAKE                              ║
  ║                                                    ║
  ║ with sleep off, a closed Mac runs at full power.   ║
  ║ in a bag it gets hot and drains the battery.       ║
  ║                                                    ║
  ║ done?  kiss  again.                                ║
  ╚════════════════════════════════════════════════════╝
```

## ?? · notes

- Asks for your password each time, because the setting needs `sudo`.
- Uninstall: run `kiss` if sleep is still off, then `rm -rf ~/.kiss` and delete the `# kiss` lines from `~/.zshrc`.

---

<sub>no agents were put to sleep in the making of this kiss.</sub>
