#!/bin/bash
cd $HOME
git clone https://github.com/Z3Prover/z3
cd $HOME/z3
python scripts/mk_make.py --prefix=$HOME
cd build
make
sudo make install

