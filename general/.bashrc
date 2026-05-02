#
# ~/.bashrc #

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.other ]; then
	. ~/.other
fi

if [ -f ~/.less ]; then
	. ~/.less
fi

if [ -f ~/.aliases ]; then
	. ~/.aliases
fi


# Created by `pipx` on 2026-05-01 10:45:45
export PATH="$PATH:/home/lucas/.local/bin"
