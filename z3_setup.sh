#!/bin/bash
cd $HOME
git clone https://github.com/Z3Prover/z3
cd $HOME/z3
python scripts/mk_make.py --prefix=/usr --python --pypkgdir=/usr/lib/python-2.7
cd build
make
sudo make install

