# kiss

Keeps your Mac awake, even with the lid closed, so long-running jobs (like an AI agent) keep going. Type `kiss` once to stay awake, and again to let it sleep.

## Install

```sh
curl -fsSL https://raw.githubusercontent.com/SheikhFahan/kiss/main/install.sh | bash
```

Then open a new terminal and type `kiss`. It asks for your password, because changing sleep settings needs `sudo`.

## Use

```sh
kiss   # → "see you on the other side"   (sleep disabled)
kiss   # → "thanks for the rest"         (sleep enabled again)
```

**Heads up:** while sleep is disabled, a closed laptop keeps running at full power. It can get hot in a bag and will drain the battery. Run `kiss` again when you're done.

## Uninstall

Run `kiss` first if sleep is still disabled. Then delete `~/.kiss` and remove the `# kiss` lines from `~/.zshrc`.
