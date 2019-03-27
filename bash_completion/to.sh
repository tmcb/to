_to(){
	COMPREPLY=()
	cur="${COMP_WORDS[COMP_CWORD]}"
	if [[ ${COMP_CWORD} -ne 1 ]]; then
		return 1
	elif [[ "${cur::1}" == "-" ]]; then
		return 1
	else
		local o=$(to -l)
		COMPREPLY=( $(compgen -W "${o}" -- ${cur}) )
	fi

	return 0
}
complete -o nospace -F _to to
