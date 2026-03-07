#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.other ]; then
	. ~/.other
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=vim
export SCRCPY_OPTS="-w --turn-screen-off --bit-rate 8M"

shopt -s autocd
shopt -s cdspell

# Apps aliases
alias heroicFLAT="flatpak run com.heroicgameslauncher.hgl"
alias sober="flatpak run org.vinegarhq.Sober"	
alias music="env LD_PRELOAD=/usr/lib/spotify-adblock.so spotify"
alias emu_3DS="flatpak run org.azahar_emu.Azahar"
alias emu_GBA="/home/lucas/Games/pokemon/emulators/mGBA-0.10.5-appimage-x64.appimage"
alias phone="scrcpy -w --turn-screen-off"

# Error correcting aliases
alias car="cat"

# Other aliases
alias get-m4a="yt-dlp -x --audio-format m4a -o ~/Music/track.m4a"
alias get-mp4="yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4 -o ~/Videos/video.mp4"
alias e="exit"
alias :q="exit"
alias c="clear"

function update()
{
	echo "----- PACMAN UPDATE -----"
	sudo pacman -Syu --noconfirm

	echo "----- FLATPAK UPDATE -----"
	flatpak update -y

	echo "----- YAY UPDATE -----"
	yay -Syu --answerdiff None --answerclean None --answeredit None
}
