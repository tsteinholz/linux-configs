# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Prompt
export PS1="\[$(tput setaf 7)\]┌─╼\[$(tput setaf 6)\] ☢ \u\[$(tput setaf 7)\] ╺─╸\[$(tput setaf 3)\] \H \[$(tput setaf 7)\][\[$(tput setaf 5)\]\w\[$(tput setaf 7)\]]\n\[$(tput setaf 7)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 7)\]└────╼\"; else echo \"\[$(tput setaf 7)\]└╼\"; fi) \[$(tput setaf 7)\]"

# Color man pages
man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
			man "$@"
}

