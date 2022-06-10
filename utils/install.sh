#!/bin/bash

declare -r LUNAR_CONFIG_HOME="${LUNAR_CONFIG_HOME:-"$HOME/.config/lvim"}" 
declare -r LUNAR_RUNTIME_HOME="${LUNAR_RUNTIME_HOME:-"$HOME/.local/share/lunarvim"}"

function msg {
    local text="$1"
    local div_width="80"
    printf "%${div_width}s\n" ' ' | tr ' ' -
    printf "%s\n" "$text"   
}

function install_lunar {
        msg "Seem like you do not have LunarVim installed"

        echo "Would you like to install LunarVim? Please specific which version: "
        printf "1. stable\n2. rolling\n(default: 1): "
        read answer
        
        case $answer in 
            2)
                echo "Start to install rolling"
                LV_BRANCH=rolling bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/rolling/utils/installer/install.sh)
                ;;
            *)
                echo "Start to install stable"
                bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
                ;;
        esac
        echo "Lunarvim installation done!"
}

function clone_config {
    msg "Cloning configuration"

    if ! git clone --branch main --depth 1 \
        "https://github.com/cpea2506/lvim.git" $LUNAR_CONFIG_HOME; then 
        echo "Failed to clone repository.";
        exit 1
    fi
}

function remove_old_config {
    msg "Remove old LunarVim config"
    
    rm -rf $LUNAR_CONFIG_HOME     
}

function packer_setup {
    msg "Preparing Packer setup"

    lvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

    printf "\nPacker setup complete"

    # lvim -c PackerSync
}

function main {
    echo "Start setting up configuration"

    [ ! -d $LUNAR_RUNTIME_HOME ] && install_lunar
     
    remove_old_config
    clone_config
    packer_setup
}

main
