#!/bin/bash

set -e
set -x

git submodule sync
git submodule update --init --recursive

rm -fr build
mkdir build
cd build && cmake .. && make && cd ..

python setup.py install
