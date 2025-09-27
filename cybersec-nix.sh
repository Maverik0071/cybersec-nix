#!/bin/bash
# script for installing the curl command with my nixos commands

sudo nix-channel --add https://nixos.org/channels/nixos-unstable
sudo nix-channel --add https://nixos.org/channels/nixpkgs-unstable

sudo nix-channel --update

git clone https://www.github.com/Maverik0071/nixos-config.git

cd nixos-config/

cd nixos-config/modules/host/

sudo cp cybersec-config.nix /etc/nixos/configuration.nix

#cd /etc/nixos/

#sudo flake nix init

#sudo cp ~nixos-config/flakes/flake.nix /etc/nixos/flake.nix

sudo nixos-rebuild switch
