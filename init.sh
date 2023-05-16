shell=$(basename $SHELL)
SCRIPT_PATH=`dirname "$0"`; SCRIPT_PATH=`eval "cd \"$SCRIPT_PATH\" && pwd"`

case $shell in
     "zsh" )
           if [[ $TERM != "dumb" && (-z $INSIDE_EMACS || $INSIDE_EMACS == "vterm") ]]; then
                eval "$(starship init zsh)"
           fi
           eval "$(direnv hook zsh)"
           if [[ $options[zle] = on ]]; then
                eval "$(atuin init zsh )"
           fi
           ;;
     "bash" )
           eval "$(starship init bash)"
           [[ -f "${SCRIPT_PATH}/bash-preexec.sh" ]] && source "${SCRIPT_PATH}/bash-preexec.sh"
           eval "$(atuin init bash)"
           eval "$(direnv hook bash)"
           ;;
     * )
           echo "Unsupported shell: '$shell'"
           ;;
esac

export STARSHIP_CONFIG="${SCRIPT_PATH}/nonerdfont.toml"