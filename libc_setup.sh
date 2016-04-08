#!/bin/bash
mkdir $HOME/src
cd $HOME/src
wget "http://ftp.gnu.org/gnu/glibc/glibc-$1.tar.gz"
tar xvf "glibc-$1.tar.gz"
mkdir -p "$HOME/build/glibc-$1"
cd "$HOME/build/glibc-$1"
"$HOME/src/glibc-$1/configure" --prefix=/usr
make
# 32
mkdir "$HOME/build/glibc32-$1"
cd "$HOME/build/glibc32-$1"
"$HOME/src/glibc-$1/configure" --prefix="$HOME/glibc32-$1" \
    --host=i686-linux-gnu \
    --build=i686-linux-gnu \
    CC="gcc -m32 -g" CXX="g++ -m32 -g" \
    CFLAGS="-O2 -march=i686" \
    CXXFLAGS="-O2 -march=i686"
make
