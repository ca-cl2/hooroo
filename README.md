# hooroo

[![AUR package](https://repology.org/badge/version-for-repo/aur/hooroo.svg)](https://aur.archlinux.org/packages/hooroo)
[![MPR package](https://repology.org/badge/version-for-repo/mpr/hooroo.svg)](https://mpr.makedeb.org/packages/hooroo)

Hooroo lets you synchronise your packages with a file.
It works with apt, flatpak and pacman (including paru and yay).

## Installation
Hooroo is available in the [AUR](https://aur.archlinux.org/packages/hooroo) and the [MPR](https://mpr.makedeb.org/packages/hooroo).

## Usage
`hooroo apply` brings your system's packages up to date with your package files.

It installs packages in your package files that are not installed, and removes packages that are not in your package files.

`hooroo save` brings your package files up to date with your system's packages.

It updates your package files with a list of packages.

By default, hooroo synchronises apt, flatpak and pacman packages, if they are installed.

To synchronise only one of them, use the `-m` or `--mode` flags.

To use a custom file or directory for the package lists, use the `-l` or `--location` flags.

## Details
Hooroo creates separate apt, flatpak and pacman package files.

The package files are stored in `$XDG_CONFIG_HOME/hooroo` or `$HOME/.config/hooroo`

The apt and pacman package files contain explicitly installed packages, and the flatpak packages file contains installed apps.

The apt and pacman package files are automatically updated when packages are installed or removed.

## Acknowledgements
Hooroo is based on [pacmanfile](https://github.com/cloudlena/pacmanfile), thanks!
