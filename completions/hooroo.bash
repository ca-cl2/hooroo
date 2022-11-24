#!/bin/bash
# Hooroo bash completion

_hooroo_completions() {
	# Complete commands in first argument, and options after
	if [[ ${#COMP_WORDS[@]} -lt 3 ]]; then
		completions="apply save"
	else
		completions="-h --help -l --location -m --mode --noconfirm --yes"
	fi

	# Save completions list
	COMPREPLY=( "$(compgen -W "$completions" -- "${COMP_WORDS[$COMP_CWORD]}")" )
}

complete -F _hooroo_completions hooroo
