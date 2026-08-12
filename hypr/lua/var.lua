mainMod = "SUPER"
terminal = "alacritty"
fileManager = terminal .. " -e yazi"
menu = "hyprlauncher"

discordWP = 101
gameWP    = 102
musicWP   = 103
browserWP = 104
codeWP    = 105

opac = 0.9 -- TODO: use lua to do the change opac script
is_opaque = false

spot = "env LD_PRELOAD=/usr/lib/spotify-adblock.so spotify --enable-features=UseOzonePlatform --ozone-platform=wayland"
