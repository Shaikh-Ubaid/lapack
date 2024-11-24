#!/usr/bin/env bash

die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "1 argument required which is the compiler, $# provided"
echo $1 | grep -E -q '^(lfortran|gfortran)$' || die "Only lfortran and gfortran compilers supported, $1 provided"

git clean -dfx

set -e
set -x

cmake \
    -DCBLAS=no \
    -DLAPACKE=no \
    -DBUILD_TESTING=yes \
    -DBUILD_DOUBLE=no \
    -DBUILD_COMPLEX=no \
    -DBUILD_COMPLEX16=no \
    -DLAPACKE_WITH_TMG=no \
    -DCMAKE_Fortran_PREPROCESS=yes \
    -DCMAKE_INSTALL_LIBDIR=/home/ext/lapack \
    -DCMAKE_Fortran_COMPILER=$1 \
    ..

make -j