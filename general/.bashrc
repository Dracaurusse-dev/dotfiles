#
# ~/.bashrc #

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.aliases   ]] && . "$HOME/.aliases"
[[ -f ~/.functions ]] && . "$HOME/.functions"
[[ -f ~/.other     ]] && . "$HOME/.other"
[[ -f ~/.less      ]] && . "$HOME/.less"
[[ -f ~/.test      ]] && . "$HOME/.test"

export LS_COLORS=$LS_COLORS:'di=0;35'
export PATH="$PATH:/home/lucas/.local/bin"
export VBOX_LOG_DEST="dir=/var/log/vbox"
export PS1="\w \$ "
