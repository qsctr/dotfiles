mkcd () {
    mkdir "$1"
    cd "$1"
}

alias scheme="rlwrap scheme"

alias music="tizonia --soundcloud-user-likes -s"

# https://unix.stackexchange.com/questions/202891/how-to-know-whether-wayland-or-x11-is-being-used
alias display-type='loginctl show-session $(loginctl | grep $(whoami) | awk '\''{print $1}'\'') -p Type'

alias alu="apt list --upgradable"

alias python=python3
alias pip=pip3

alias download-website="wget -m -np -p -k -K -E -w 20 --random-wait"

# https://askubuntu.com/questions/15832/how-do-i-get-the-cpu-temperature
alias temp="paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'"

alias ucla-vpn="sudo openconnect -u bretton ssl.vpn.ucla.edu < <(secret-tool lookup account ucla)"

if (( $+commands[bat] ))
then
    alias cat=bat
    alias catt=/usr/bin/cat
fi

alias r=radian
