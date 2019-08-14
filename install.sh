#!/bin/bash
MUCCADORO_URL="https://raw.githubusercontent.com/africanmx/muccadoro/master/muccadoro"
detect_package_manager(){
        case "$SHELL" in
                *termux*) echo apt && return; ;;
                *) ;;
        esac
        test -f /etc/debian_version && echo apt && return
        test -f /etc/redhat-release && echo yum && return
        test -f /etc/arch-release && echo pacman && return
        test -f /etc/gentoo-release && echo emerge && return
        test -f /etc/SuSE-release && echo zypp && return
}

try_to_install(){
	test -n "$(which $1)" && echo "$1 OK" && return
        package_manager="$(detect_package_manager)"
        case "$package_manager" in
                apt)
                        test -x "$(command -v sudo)" && sudo apt update || apt update
                        test -x "$(command -v sudo)" && sudo apt -y install "$1" || apt -y install "$1"
                ;;
                yum)
                        test -x "$(command -v sudo)" && sudo yum update || yum update
                        test -x "$(command -v sudo)" && sudo yum -y install "$1" || yum -y install "$1"
                ;;
                pacman)
                        pacman -Su
                        yes | pacman -S -y "$1"
                ;;
                emerge)
                        echo "Program $1 unavailable for Gentoo install" >&2
                        exit 127
                ;;
                zypp)
                        echo "Program $1 unavailable for Suse install" >&2
                        exit 127
                ;;
        esac
}

installer(){
	echo "Running..."
	try_to_install curl
	test -d ~/../usr/bin && place=~/../usr/bin # this is for termux
	test -z "$place" && test -d /usr/bin && place=/usr/bin
	test -z "$place" && test -d /bin && place=/bin
	test -z "$place" && echo "No place to install. Sorry" >&2 && exit 1
	(
		cd "$place"
		test -x "$(command -v sudo)" && sudo curl -O "$MUCCADORO_URL" >/dev/null 2>&1 || curl -O "$MUCCADORO_URL" >/dev/null 2>&1
		test -x "$(command -v sudo)" && sudo chmod +x muccadoro || chmod +x muccadoro
		test -n "$(which muccadoro)" && echo "Done!" || echo "Failed. Try with sudo" >&2
	)
	exit
}
installer
