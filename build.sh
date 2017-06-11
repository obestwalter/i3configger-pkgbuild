#!/usr/bin/env bash

set -e

function clean() {
    if [ -d "/vagrant" ]; then
        cd /vagrant
    fi
    for item in *.tar.gz pkg src; do
        rm -rf $item
    done
    sudo pacman -R i3configger --noconfirm || true
}


function build() {
    makepkg -csi --noconfirm
    makepkg --printsrcinfo > .SRCINFO
}


function check() {
    # simulate existing i3 installation
    mkdir -p /home/vagrant/.config/i3
    touch /home/vagrant/.config/i3/config
    i3configger --version
    i3configger
}

clean
build
check
echo "SUCCESS: package was built and installed and ran successfully"
