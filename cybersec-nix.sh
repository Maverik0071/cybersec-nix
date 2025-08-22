!/bin/bash
# script for installing the curl command with my nixos commands

sudo nix-channel --add https://nixos.org/channels/nixos-unstable
sudo nix-channel --add https://nixos.org/channels/nixpkgs-unstable

git clone https://www.github.com/Maverik0071/nixos-config.git

sudo cp ~/nixos-config/modules/cybersec-config.nix /etc/nixos/configuration.nix

cd /etc/nixos/

sudo flake nix init

sudo cp ~nixos-config/flakes/flake.nix /etc/nixos/flake.nix

sudo nixos-rebuild switch
