# hooroo

[![hooroo](https://img.shields.io/aur/version/hooroo)](https://aur.archlinux.org/packages/hooroo)

Hooroo lets you synchronise your pacman and flatpak packages with files.
It works with pacman, paru and yay.

## Installation
Hooroo is available in the [AUR](https://aur.archlinux.org/packages/hooroo).

## Usage
`hooroo apply` brings your system's packages up to date with your package files.

It installs packages in your package files that are not installed, and removes packages that are not in your package files.

`hooroo save` brings your package files up to date with your system's packages.

It updates your package files with a list of packages.

By default, hooroo synchronises both pacman and flatpak packages, if they are installed.

To synchronise only one of them, use the `-m` or `--mode` flags.

## Details
Hooroo creates separate pacman and flatpak package files.

The package files are stored in `$XDG_CONFIG_HOME/hooroo` or `$HOME/.config/hooroo`

The pacman packages file contains explicitly installed packages, and the flatpak packages file contains installed apps.

## Acknowledgements
Hooroo is heavily based on [pacmanfile](https://github.com/cloudlena/pacmanfile), thanks!
