# hooroo
Hooroo lets you synchronise your pacman packages with a file.
It works with pacman, paru and yay.

## Using
`hooroo apply` brings your system's packages up to date with your package file.

It installs packages in your package file that are not explicitly installed, and removes packages that are explicitly installed, but are not in your package file, or are unneeded dependencies.

`hooroo save` brings your packages file up to date with your system's packages.

It updates your package file with a list of explicitly installed packages.

The default package file location is `$XDG_CONFIG_HOME/packages.txt`, or `$HOME/.config/packages.txt`, but it can be changed with the `-f` or `--file` flags.

## Acknowledgements
This is heavily based on [pacmanfile](https://github.com/cloudlena/pacmanfile), thanks!
