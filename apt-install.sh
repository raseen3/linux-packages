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
	nodejs-doc
	golang-go)

for i in "${install_dependencies[@]}"
do
	apt install "$i" -y
done

function rust() {
	curl --proto '=https' --tlsv1.2 -sSF https://sh.rustup.rs | sh;
}

function go() {
	echo "Installing go"
	# check https://medium.com/@benzbraunstein/how-to-install-and-setup-golang-development-under-wsl-2-4b8ca7720374
	wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz
	sudo tar -xvf go1.20.1.linux-amd64.tar.gz
	sudo mv go /usr/local
	echo "add go to \$PATH"
}

function node() {
	echo "Installing node.js"
}

function julia() {
	# check https://olejorik.github.io/post/juliawsl/
	# x86 version
	wget https://julialang-s3.julialang.org/bin/linux/x64/1.8/julia-1.8.5-linux-x86_64.tar.gz
	tar -xvzf julia-1.8.5-linux-x86_64.tar.gz
	sudo cp -r julia-1.8.5 /opt/
	sudo ln -s /opt/julia-1.8.5/bin/julia /usr/local/bin/julia
}

function anaconda() {
	# check https://gist.github.com/kauffmanes/5e74916617f9993bc3479f401dfec7da
	wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
	bash Anaconda3-2022.10-Linux-x86_64.sh
	echo "add Anaconda to \$PATH"
}

rust()

