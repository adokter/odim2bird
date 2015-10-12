#! /bin/bash
#
# Make script
#

#Setting names of program

SOURCE="vol2birdprof_ODIM_h5.c"
BINARY="vol2birdprof_ODIM_h5"

#Setting compiler and options

COMPILE="gcc -Wall -O3"
# when debugging with valgrind: 
#COMPILE="gcc -g -O0"
# NB: need to run valgrind from path with the generated dSYM directory, i.e. where you compiled

#Setting include and library directories

IPATH="-I/opt/local/include"
LPATH="-L/opt/local/lib"
#IPATH="-I$HOME/include"
#LPATH="-L$HOME/lib"

#Setting libraries

LIBRARIES="-lhdf5_hl -lhdf5 -lz -lm"

#Compiling of source

$COMPILE $SOURCE -o $BINARY $IPATH $LPATH $LIBRARIES
