# linux-packages

## apt

list of packages to install

```bash
sudo apt install build-essential manpages-dev virtualenv python3 curl wget vim llvm clang python3-pip -y;
```

installs basicall build tools (need to add more)

```bash
sudo apt install pandoc texlive-full -y;
```

installs LaTeX and Pandoc for note taking

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
```

## yum

```bash
sudo yum install elfutils-libelf-devel
```

```bash
sudo yum install gcc llvm clang
```

```bash
sudo yum install tree
```

```bash
sudo yum install epel-release
```

```bash
sudo yum install glibc-devel.i686 libgcc.i686
```

```bash
sudo yum install glibc-devel.i686 libgcc.i686 lib.stdc++-devel.i686 ncurses-devel.i686
```

## zypper

```bash
sudo zypper install gcc llvm clang tree python311
```

---

installs Rust

[install Go](https://medium.com/@benzbraunstein/how-to-install-and-setup-golang-development-under-wsl-2-4b8ca7720374)

~~Script to download Go:~~ defunct

```bash
wget https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz
sudo tar -xvf go1.14.2.linux-amd64.tar.gz
sudo mv go /usr/local
rm go1.14.2.linux-amd64.tar.gz
cat .bashrc && echo "

# GO path
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
" >> .bashrc
```

[install Julia](https://julialang.org/downloads/platform/#linux_and_freebsd)
