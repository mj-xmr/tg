#!/bin/bash

MAKE=make
#GEN="CodeBlocks - Unix Makefiles"
#BUILD_DIR="build"
#mkdir -p $BUILD_DIR && cd $BUILD_DIR

export CFLAGS="-DTGL_AVOID_OPENSSL -w"
autoconf
./configure && ${MAKE} -j`nproc` || ${MAKE}

