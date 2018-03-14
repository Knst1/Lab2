#!/bin/bash

gcc -fPIC -c revert_string.c
# Create dynamic library
gcc -shared -o libdyn.so revert_string.o
gcc main.c -L. -ldyn -o rezultdyn
LD_LIBRARY_PATH=$(pwd)
export LD_LIBRARY_PATH
#
gcc ../tests/tests.c -L. -ldyn -lcunit -o tests