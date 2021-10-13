#!/bin/bash

MAKE=make
GEN="CodeBlocks - Unix Makefiles"
BUILD_DIR="build"

#mkdir -p $BUILD_DIR && cd $BUILD_DIR

./configure && make -j`nproc` || make

