# Devbox Fleek Proof of Concept

This is a proof of concept for a devbox global shell configuration that is pretty close to the Fleek `HIGH` bling configuration.

## Installation

### Install Devbox

```bash
curl -fsSL https://get.jetpack.io/devbox | bash
```

### Clone this repo into the Devbox global directory

```bash
git clone https://github.com/bketelsen/devboxfleek.git ~/.local/share/devbox/global/default
```

### Source the Devbox global configuration

See directions [here][def]

**Be sure to add the `--init-hook` flag!**

```bash

[def]: https://www.jetpack.io/devbox/docs/devbox_global/#add-global-packages-to-your-current-host-shell

## Notes

- First shell launch will be slow, as it will install all the packages.  Subsequent shells will be faster.
- Tested with zsh, but not bash yet.  I'll get to that soon.
- Shell script hackery needs to be cleaned up. Would be nice to have a env var/substitution for the devbox global path in the shell scripts.