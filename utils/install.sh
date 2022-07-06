#!/bin/bash

declare -r LUNAR_CONFIG_HOME="${LUNAR_CONFIG_HOME:-"$HOME/.config/lvim"}"
declare -r LUNAR_RUNTIME_HOME="${LUNAR_RUNTIME_HOME:-"$HOME/.local/share/lunarvim"}"

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
		read -p "1. stable\n2. rolling\n(default: 1): " -r answer

		case $answer in
		1 | *[[:blank:]]* | "")
			echo "Start to install stable"
			try bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
			return 0
			;;
		2)
			echo "Start to install rolling"
			try LV_BRANCH=rolling bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/rolling/utils/installer/install.sh)
			return 0
			;;
		*)
			echo "Please answer 1 or 2!"
			;;
		esac
	done

	echo "Lunarvim installation done!"
}

function clone_config {
	msg "Cloning configuration"

	try git clone --branch main --depth 1 \
		"https://github.com/cpea2506/lvim.git" "$LUNAR_CONFIG_HOME"
}

function remove_old_config {
	msg "Remove old LunarVim config"

	try rm -rf "$LUNAR_CONFIG_HOME"
}

function packer_setup {
	msg "Preparing Packer setup"

	try lvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

	echo "Packer setup complete"
}

function main {
	echo "Start setting up configuration"

	[ ! -d "$LUNAR_RUNTIME_HOME" ] && install_lunarvim

	remove_old_config
	clone_config
	packer_setup
}

main
