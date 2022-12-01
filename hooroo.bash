# Hooroo bash completion

_hooroo_completions() {
	# Unset previous variables
	unset completions file

	# Complete commands in first argument, and options after
	if (( COMP_CWORD == 1 )); then
		completions="apply save"
	else
		# Find previous option used
		prev_opt=$(( COMP_CWORD - 1 ))

		# Use different completions for previous options used
		case ${COMP_WORDS[$prev_opt]} in
			-l | --location)
				file=f
				;;
			-m | --mode)
				completions="all apt flatpak pacman"
				;;
			*)
				completions="-h --help -l --location -m --mode --noconfirm --yes"
				;;
		esac
	fi

	# Save completions list
	mapfile -t COMPREPLY < <(compgen -"$file"W "$completions" -- "${COMP_WORDS[$COMP_CWORD]}")
}

complete -F _hooroo_completions hooroo
