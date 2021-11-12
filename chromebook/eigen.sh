#!/bin/sh

# apt install g++
# apt install libeigen3-dev

g++ -I/usr/include/eigen3/ ../android/matrix.cpp -o matrix
