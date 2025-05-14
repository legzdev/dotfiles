#!/bin/bash

# Termux root
PREFIX="$PREFIX"


backup() {
	local path="$1"
	local local_path=""

	if [[ "$path" == "$HOME"* ]]; then
		local_path="./home"$(echo "$path" | sed "s|^$HOME||")
	else
		local_path="."$(echo "$path" | sed "s|^$PREFIX||")
	fi

	if test -z "$local_path"; then
		echo "invalid local path: '$local_path' for '$path'"
	exit 1
	fi

	if test -d "$path"; then
		mkdir -p "$local_path"
		cp -r "$path"* "$local_path"

	elif test -f "$path"; then
		mkdir -p "$(realpath $(dirname $local_path))"
		cp -r "$path" "$local_path"

	else
		return 0
	fi

	echo "$path => $local_path"
}


do_backup() {
	backup "$HOME/.xinitrc"
	backup "$HOME/.zshrc"

	backup "$XDG_CONFIG_HOME/btop/btop.conf"
	backup "$XDG_CONFIG_HOME/Code/User/settings.json"
	backup "$XDG_CONFIG_HOME/fastfetch/"
	backup "$XDG_CONFIG_HOME/fish/"
	backup "$XDG_CONFIG_HOME/git/ignore"
	backup "$XDG_CONFIG_HOME/kitty/"
	backup "$XDG_CONFIG_HOME/lsd/"
	backup "$XDG_CONFIG_HOME/mimeapps.list"
	backup "$XDG_CONFIG_HOME/mpv/"
	backup "$XDG_CONFIG_HOME/npm/"
	backup "$XDG_CONFIG_HOME/nvim/"
	backup "$XDG_CONFIG_HOME/pip/"
	backup "$XDG_CONFIG_HOME/polybar/"
	backup "$XDG_CONFIG_HOME/starship.toml"

	backup "$PREFIX/etc/docker/daemon.json"
	backup "$PREFIX/etc/X11/xorg.conf.d/00-keyboard.conf"
}


do_restore() {
	echo "not implemented"
}


case "$1" in
	"backup")
		do_backup ;;
	"restore")
		do_restore ;;
	*)
		echo "expected 'backup' or 'restore', found '$opt'"
		exit 1 ;;
esac

