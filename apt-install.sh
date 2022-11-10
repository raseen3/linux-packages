#!/bin/bash

# script must be run as sudo and be run on a system with apt
apt update -y
apt upgrade -y
# list of dependencies to install
install_dependencies=(build-essential
	manpages-dev	
	virtualenv
	python3
	curl
	wget
	vim
	llvm
	clang
	python3-pip
	nodejs
	nodejs-doc)

for i in "${install_dependencies[@]}"
do
	apt install "$i" -y
done

function rust() {
	curl --proto '=https' --tlsv1.2 -sSF https://sh.rustup.rs | sh;
}

function go() {
	echo "Installing GO..."
}

function node() {
	echo "Installing node.js"
}

rust()
