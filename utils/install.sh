#!/bin/bash

declare -r LUNAR_CONFIG_HOME="${LUNAR_CONFIG_HOME:-"$HOME/.config/lvim"}"
declare -r LUNAR_RUNTIME_HOME="${LUNAR_RUNTIME_HOME:-"$HOME/.local/share/lunarvim"}"
declare -r LV_BRANCH="${LV_BRANCH:-release-1.3/neovim-0.9}"

function msg {
	printf "%80s\n" ' ' | tr ' ' -
	printf "%s\n" "$1"
}

function try {
	if ! "$@"; then
		echo "Failed to execute command!"
		exit 1
	fi
}

function install_lunarvim {
	msg "Seem like you do not have LunarVim installed"

	echo "Would you like to install LunarVim? Please choose which version: "

	while true; do
		printf "1. stable\n2. rolling\n(default: 1): "
		read -r answer

		case $answer in
		1 | *[[:blank:]]* | "")
			echo "Start to install stable"
			break
			;;
		2)
			echo "Start to install nightly"
			export LV_BRANCH=master
			break
			;;
		*)
			echo "Please answer 1 or 2!"
			;;
		esac
	done

	try bash <(curl -s "https://raw.githubusercontent.com/lunarvim/lunarvim/$LV_BRANCH/utils/installer/install.sh") --no-install-dependencies

	echo "Lunarvim installation done!"
}

function clone_config {
	msg "Cloning configuration"

	try git clone --branch main "https://github.com/cpea2506/lvim.git" "$LUNAR_CONFIG_HOME"
}

function remove_old_config {
	msg "Replace old LunarVim config"

	echo "Backup..."
	try mv "$LUNAR_CONFIG_HOME" "$LUNAR_CONFIG_HOME.old"

	echo "Remove old config"
	try rm -rf "$LUNAR_CONFIG_HOME"
}

function main {
	echo "Start setting up configuration"

	[ ! -d "$LUNAR_RUNTIME_HOME" ] && install_lunarvim

	remove_old_config
	clone_config

	echo "Setting up configuration done"
}

main
