#!/bin/bash
mkdir $HOME/src
cd $HOME/src
wget "http://ftp.gnu.org/gnu/glibc/glibc-$1.tar.gz"
tar xvf "glibc-$1.tar.gz"
rm -rf "glibc-$1.tar.gz"
mkdir -p "$HOME/build/glibc-$1"
cd "$HOME/build/glibc-$1"
"$HOME/src/glibc-$1/configure" --prefix=/usr \
    CFLAGS="-g -g3 -ggdb -gdwarf-4 -Og" \
    CXXFLAGS="-g -g3 -ggdb -gdwarf-4 -Og"
make
# 32
mkdir "$HOME/build/glibc32-$1"
cd "$HOME/build/glibc32-$1"
"$HOME/src/glibc-$1/configure" --prefix=/usr \
    --host=i686-linux-gnu \
    CC="gcc -m32" CXX="g++ -m32" \
    CFLAGS="-g -g3 -ggdb -gdwarf-4 -Og" \
    CXXFLAGS="-g -g3 -ggdb -gdwarf-4 -Og"
make
