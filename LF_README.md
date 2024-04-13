## To compile with LFortran

```console
cmake .. -DCMAKE_Fortran_COMPILER=lfortran -DCBLAS=no -DLAPACKE=no -DBUILD_TESTING=no -DBUILD_DOUBLE=no -DBUILD_COMPLEX=no -DBUILD_COMPLEX16=no -DLAPACKE_WITH_TMG=no -DCMAKE_Fortran_PREPROCESS=yes -DCMAKE_Fortran_FLAGS="--fixed-form-infer --implicit-interface" -DCMAKE_INSTALL_LIBDIR=$HOME/ext/lapack
```

```console
cmake --build . -j --target install
```

We currently install in `$HOME/ext/lapack`. Feel free to install in any other directory as you like.

## To compile with GFortran

```console
cmake .. -DCMAKE_Fortran_COMPILER=gfortran -DCBLAS=no -DLAPACKE=no -DBUILD_TESTING=no -DBUILD_DOUBLE=no -DBUILD_COMPLEX=no -DBUILD_COMPLEX16=no -DLAPACKE_WITH_TMG=no -DCMAKE_Fortran_PREPROCESS=yes -DCMAKE_INSTALL_LIBDIR=$HOME/ext/lapack
```

```console
cmake --build . -j --target install
```

__Note__: We are currently using the commit `129637ea6fb3baed0f248c7570b090eee17602bf` of LAPACK.


## For me, the build messages are as follows

```console
(lf) ubaid@ubaids-MacBook-Pro build % cmake .. -DCMAKE_Fortran_COMPILER=lfortran -DCBLAS=no -DLAPACKE=no -DBUILD_TESTING=no -DBUILD_DOUBLE=no -DBUILD_COMPLEX=no -DBUILD_COMPLEX16=no -DLAPACKE_WITH_TMG=no -DCMAKE_Fortran_PREPROCESS=yes -DCMAKE_Fortran_FLAGS="--fixed-form-infer --implicit-interface" -DCMAKE_INSTALL_LIBDIR=$HOME/ext/lapack
CMake Deprecation Warning at CMakeLists.txt:1 (cmake_minimum_required):
  Compatibility with CMake < 3.5 will be removed from a future version of
  CMake.

  Update the VERSION argument <min> value or use a ...<max> suffix to tell
  CMake that the project does not need compatibility with older versions.


-- The Fortran compiler identification is unknown
-- The C compiler identification is AppleClang 14.0.3.14030022
-- Detecting Fortran compiler ABI info
-- Detecting Fortran compiler ABI info - done
-- Check for working Fortran compiler: /Users/ubaid/bin/lfortran - skipped
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /Library/Developer/CommandLineTools/usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Setting build type to 'Release' as none was specified.
-- Checking if build type is 'Coverage'
-- Checking if build type is 'Coverage': 0
CMake Warning at CMakeLists.txt:145 (message):
  Fortran local arrays should be allocated on the stack.  Please use a
  compiler which guarantees that feature.  See
  https://github.com/Reference-LAPACK/lapack/pull/188 and references therein.


-- Build tests: no
CMake Deprecation Warning at /Users/ubaid/Desktop/OpenSource/lapack/INSTALL/CMakeLists.txt:1 (cmake_minimum_required):
  Compatibility with CMake < 3.5 will be removed from a future version of
  CMake.

  Update the VERSION argument <min> value or use a ...<max> suffix to tell
  CMake that the project does not need compatibility with older versions.


-- Looking for Fortran NONE - not found
CMake Deprecation Warning at /Users/ubaid/Desktop/OpenSource/lapack/INSTALL/CMakeLists.txt:1 (cmake_minimum_required):
  Compatibility with CMake < 3.5 will be removed from a future version of
  CMake.

  Update the VERSION argument <min> value or use a ...<max> suffix to tell
  CMake that the project does not need compatibility with older versions.


-- Looking for Fortran INT_CPU_TIME - not found
CMake Deprecation Warning at /Users/ubaid/Desktop/OpenSource/lapack/INSTALL/CMakeLists.txt:1 (cmake_minimum_required):
  Compatibility with CMake < 3.5 will be removed from a future version of
  CMake.

  Update the VERSION argument <min> value or use a ...<max> suffix to tell
  CMake that the project does not need compatibility with older versions.


-- Looking for Fortran EXT_ETIME - not found
CMake Deprecation Warning at /Users/ubaid/Desktop/OpenSource/lapack/INSTALL/CMakeLists.txt:1 (cmake_minimum_required):
  Compatibility with CMake < 3.5 will be removed from a future version of
  CMake.

  Update the VERSION argument <min> value or use a ...<max> suffix to tell
  CMake that the project does not need compatibility with older versions.


-- Looking for Fortran EXT_ETIME_ - not found
CMake Deprecation Warning at /Users/ubaid/Desktop/OpenSource/lapack/INSTALL/CMakeLists.txt:1 (cmake_minimum_required):
  Compatibility with CMake < 3.5 will be removed from a future version of
  CMake.

  Update the VERSION argument <min> value or use a ...<max> suffix to tell
  CMake that the project does not need compatibility with older versions.


-- Looking for Fortran INT_ETIME - not found
-- --> Will use second_NONE.f and dsecnd_NONE.f as timing function.
-- Build deprecated routines: OFF
-- Build single precision real: ON
-- Build double precision real: no
-- Build single precision complex: no
-- Build double precision complex: no
-- Using supplied NETLIB BLAS implementation
-- Using supplied NETLIB LAPACK implementation
-- Build html documentation: OFF
-- Build man documentation: OFF
-- Configuring done (9.0s)
-- Generating done (0.1s)
-- Build files have been written to: /Users/ubaid/Desktop/OpenSource/lapack/build
```

```console
(lf) ubaid@ubaids-MacBook-Pro build % cmake --build . -j --target install
[  0%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/lsame.f.o
[  0%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/saxpy.f.o
[  0%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sdot.f.o
[  0%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/snrm2.f90.o
[  0%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sgemm.f.o
[  0%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sasum.f.o
[  0%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sasum.f.o
[  0%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/srot.f.o
[  1%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sgemv.f.o
[  1%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sscal.f.o
[  1%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/saxpy.f.o
[  1%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sdsdot.f.o
[  1%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/xerbla.f.o
[  2%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sdot.f.o
[  3%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sdsdot.f.o
[  4%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/xerbla_array.f.o
[  4%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/ssymv.f.o
[  4%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/ssyr.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sspr2.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/isamax.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/ssymv.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/srotm.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/strmm.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/xerbla.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/srotg.f90.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/strsm.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sger.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/scopy.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/srotmg.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/ssyr2.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sgemm.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/strmm.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sgemv.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/stpmv.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/ssyrk.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/stbsv.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/stbmv.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/ssymm.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/strsv.f.o
[  5%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/ssyr2k.f.o
[  6%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/strsm.f.o
[  6%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/strsv.f.o
[  6%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/stbmv.f.o
[  6%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/ssbmv.f.o
[  7%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/srotmg.f.o
[  7%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sswap.f.o
[  7%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sspmv.f.o
[  7%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/stbsv.f.o
[  7%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/snrm2.f90.o
[  7%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sspmv.f.o
[  8%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/scopy.f.o
[  9%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/strmv.f.o
[  9%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/ssyr2.f.o
[  9%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/isamax.f.o
[  9%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/srotm.f.o
[ 10%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/ssyr2k.f.o
[ 11%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/xerbla_array.f.o
[ 11%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/ssbmv.f.o
[ 11%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/ssyr.f.o
[ 11%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/lsame.f.o
[ 12%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/stpsv.f.o
[ 12%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sgbmv.f.o
[ 12%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/stpmv.f.o
[ 12%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/ssymm.f.o
[ 12%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/strmv.f.o
[ 13%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/stpsv.f.o
[ 13%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sspr.f.o
[ 13%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sswap.f.o
[ 13%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/ssyrk.f.o
[ 13%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sger.f.o
[ 13%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sgbmv.f.o
[ 14%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sspr2.f.o
[ 14%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/sscal.f.o
[ 14%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/srotg.f90.o
[ 14%] Building Fortran object BLAS/SRC/CMakeFiles/blas_obj.dir/sspr.f.o
[ 14%] Building Fortran object BLAS/SRC/CMakeFiles/blas_64_obj.dir/blas_64_obj/srot.f.o
[ 14%] Built target blas_obj
[ 14%] Built target blas_64_obj
[ 14%] Linking Fortran static library ../../lib/libblas.a
warning: /Library/Developer/CommandLineTools/usr/bin/ranlib: archive library: ../../lib/libblas.a the table of contents is empty (no object file members in the library define global symbols)
[ 14%] Built target blas
[ 14%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgbcon.f.o
[ 14%] Building Fortran object SRC/CMakeFiles/lapack.dir/la_constants.f90.o
[ 15%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgbsv.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgebd2.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgbtrs.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgbequ.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgbbrd.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeev.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgebrd.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgbrfs.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgebak.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgecon.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgbtrf.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgbsvx.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgbtf2.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeequ.f.o
[ 16%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgees.f.o
[ 17%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeesx.f.o
[ 17%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeevx.f.o
[ 18%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeqrf.f.o
[ 18%] Building Fortran object SRC/CMakeFiles/lapack.dir/slacon.f.o
[ 18%] Building Fortran object SRC/CMakeFiles/lapack.dir/ilaslc.f.o
[ 18%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqgb.f.o
[ 19%] Building Fortran object SRC/CMakeFiles/lapack.dir/shsein.f.o
[ 20%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggrqf.f.o
[ 20%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeqr2p.f.o
[ 21%] Building Fortran object SRC/CMakeFiles/lapack.dir/slalsd.f.o
[ 21%] Building Fortran object SRC/CMakeFiles/lapack.dir/shseqr.f.o
[ 21%] Building Fortran object SRC/CMakeFiles/lapack.dir/sposv.f.o
[ 21%] Building Fortran object SRC/CMakeFiles/lapack.dir/sspcon.f.o
[ 21%] Building Fortran object SRC/CMakeFiles/lapack.dir/spstf2.f.o
[ 21%] Building Fortran object SRC/CMakeFiles/lapack.dir/slansy.f.o
[ 21%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssptrs.f.o
[ 21%] Building Fortran object SRC/CMakeFiles/lapack.dir/sspevd.f.o
[ 21%] Building Fortran object SRC/CMakeFiles/lapack.dir/sptsv.f.o
[ 21%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssygvx.f.o
style suggestion: Use character(1) instead of character*1
  --> /Users/ubaid/Desktop/OpenSource/lapack/SRC/la_constants.f90:59:4
   |
59 |    character*1, parameter :: sprefix = 'S'
   |    ^^^^^^^^^^^ help: write this as 'character(1)'

style suggestion: Use character(1) instead of character*1
  --> /Users/ubaid/Desktop/OpenSource/lapack/SRC/la_constants.f90:60:4
   |
60 |    character*1, parameter :: cprefix = 'C'
   |    ^^^^^^^^^^^ help: write this as 'character(1)'

style suggestion: Use character(1) instead of character*1
   --> /Users/ubaid/Desktop/OpenSource/lapack/SRC/la_constants.f90:102:4
    |
102 |    character*1, parameter :: dprefix = 'D'
    |    ^^^^^^^^^^^ help: write this as 'char[ 22%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrd.f.o
acter(1)'

style suggestion: Use character(1) instead of character*1
   --> /Users/ubaid/Desktop/OpenSource/lapack/SRC/la_constants.f90:103:4
    |
103 |    character*1, parameter :: zprefix = 'Z'
    |    ^^^^^^^^^^^ help: write this as 'character(1)'


Note: Please report unclear, confusing or incorrect messages as bugs at
https://github.com/lfortran/lfortran/issues.
[ 23%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssysv_rk.f.o
[ 23%] Building Fortran object SRC/CMakeFiles/lapack.dir/spftrf.f.o
[ 24%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgsvj1.f.o
[ 24%] Building Fortran object SRC/CMakeFiles/lapack.dir/sspsvx.f.o
[ 24%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorcsd2by1.f.o
[ 24%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorcsd.f.o
[ 24%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorbdb6.f.o
[ 24%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorbdb1.f.o
[ 25%] Building Fortran object SRC/CMakeFiles/lapack.dir/stpqrt.f.o
[ 25%] Building Fortran object SRC/CMakeFiles/lapack.dir/sstemr.f.o
[ 25%] Building Fortran object SRC/CMakeFiles/lapack.dir/stpttf.f.o
[ 25%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorbdb3.f.o
[ 25%] Building Fortran object SRC/CMakeFiles/lapack.dir/strtrs.f.o
[ 26%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssysv_rook.f.o
[ 26%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeequb.f.o
[ 26%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorbdb2.f.o
[ 26%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeqrt.f.o
[ 26%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgbequb.f.o
[ 27%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorbdb5.f.o
[ 27%] Building Fortran object SRC/CMakeFiles/lapack.dir/stpqrt2.f.o
[ 27%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgejsv.f.o
[ 27%] Building Fortran object SRC/CMakeFiles/lapack.dir/slansf.f.o
[ 27%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyequb.f.o
[ 27%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgemqrt.f.o
[ 28%] Building Fortran object SRC/CMakeFiles/lapack.dir/stpttr.f.o
[ 28%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrf_rook.f.o
[ 28%] Building Fortran object SRC/CMakeFiles/lapack.dir/strsen.f.o
[ 28%] Building Fortran object SRC/CMakeFiles/lapack.dir/stplqt.f.o
[ 29%] Building Fortran object SRC/CMakeFiles/lapack.dir/slapmr.f.o
[ 29%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgsvj0.f.o
[ 29%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgelqt3.f.o
[ 29%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeqrt3.f.o
[ 30%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeqrt2.f.o
[ 30%] Building Fortran object SRC/CMakeFiles/lapack.dir/sdisna.f.o
[ 30%] Building Fortran object SRC/CMakeFiles/lapack.dir/spoequb.f.o
[ 30%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorbdb.f.o
[ 30%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaed0.f.o
[ 31%] Building Fortran object SRC/CMakeFiles/lapack.dir/spotrf.f.o
[ 31%] Building Fortran object SRC/CMakeFiles/lapack.dir/stprfb.f.o
[ 32%] Building Fortran object SRC/CMakeFiles/lapack.dir/stfsm.f.o
[ 32%] Building Fortran object SRC/CMakeFiles/lapack.dir/sladiv.f.o
[ 32%] Building Fortran object SRC/CMakeFiles/lapack.dir/sbdsdc.f.o
[ 32%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbevx_2stage.f.o
[ 32%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgetrs.f.o
[ 32%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaed1.f.o
[ 32%] Building Fortran object SRC/CMakeFiles/lapack.dir/spotrf2.f.o
[ 32%] Building Fortran object SRC/CMakeFiles/lapack.dir/spotrs.f.o
[ 32%] Building Fortran object SRC/CMakeFiles/lapack.dir/spftrs.f.o
[ 33%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgedmdq.f90.o
[ 33%] Building Fortran object SRC/CMakeFiles/lapack.dir/slacpy.f.o
[ 33%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarnv.f.o
[ 33%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaebz.f.o
[ 33%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaneg.f.o
[ 33%] Building Fortran object SRC/CMakeFiles/lapack.dir/sisnan.f.o
[ 34%] Building Fortran object SRC/CMakeFiles/lapack.dir/slas2.f.o
[ 34%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarrf.f.o
[ 34%] Building Fortran object SRC/CMakeFiles/lapack.dir/slapy2.f.o
[ 34%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgetrf2.f.o
[ 34%] Building Fortran object SRC/CMakeFiles/lapack.dir/slabad.f.o
[ 35%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgetrf.f.o
[ 35%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaev2.f.o
[ 35%] Building Fortran object SRC/CMakeFiles/lapack.dir/slamrg.f.o
[ 36%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbevd_2stage.f.o
[ 36%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrs.f.o
[ 37%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaed4.f.o
[ 37%] Building Fortran object SRC/CMakeFiles/lapack.dir/stbtrs.f.o
[ 38%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaeda.f.o
[ 39%] Building Fortran object SRC/CMakeFiles/lapack.dir/stbcon.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaswlq.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarrc.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/stpmlqt.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorbdb4.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/stfttr.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/stgsja.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyevr_2stage.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/stgex2.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/stgsy2.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgemlq.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyevx_2stage.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaed5.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyev_2stage.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/stbrfs.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgelqt.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasd7.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/ilaenv.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasr.f.o
[ 40%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasq5.f.o
[ 41%] Building Fortran object SRC/CMakeFiles/lapack.dir/stpmqrt.f.o
[ 41%] Building Fortran object SRC/CMakeFiles/lapack.dir/stgsen.f.o
[ 42%] Building Fortran object SRC/CMakeFiles/lapack.dir/strsyl.f.o
[ 42%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssygv_2stage.f.o
[ 42%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbev_2stage.f.o
[ 42%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarrr.f.o
[ 43%] Building Fortran object SRC/CMakeFiles/lapack.dir/sbdsqr.f.o
[ 43%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasd0.f.o
[ 43%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaed3.f.o
[ 43%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrs_rook.f.o
[ 43%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgesvdq.f.o
[ 43%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarra.f.o
[ 43%] Building Fortran object SRC/CMakeFiles/lapack.dir/slascl.f.o
[ 43%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarre.f.o
[ 44%] Building Fortran object SRC/CMakeFiles/lapack.dir/slanst.f.o
[ 44%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaisnan.f.o
[ 44%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarrd.f.o
[ 44%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgedmd.f90.o
[ 44%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaswp.f.o
[ 44%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaed2.f.o
[ 45%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasda.f.o
[ 46%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarrk.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarrb.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaed6.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgemlqt.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgemqr.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/slamswlq.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasd2.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/slagts.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/slagtf.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrs_aa_2stage.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/ieeeck.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasv2.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrd_2stage.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasq4.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/stzrzf.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasd5.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasq2.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/lsamen.f.o
[ 47%] Building Fortran object SRC/CMakeFiles/lapack.dir/spttrf.f.o
[ 48%] Building Fortran object SRC/CMakeFiles/lapack.dir/iparmq.f.o
[ 48%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasd1.f.o
[ 48%] Building Fortran object SRC/CMakeFiles/lapack.dir/slartgs.f.o
[ 48%] Building Fortran object SRC/CMakeFiles/lapack.dir/ilaprec.f.o
[ 48%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaruv.f.o
[ 48%] Building Fortran object SRC/CMakeFiles/lapack.dir/slartg.f90.o
[ 48%] Building Fortran object SRC/CMakeFiles/lapack.dir/iladiag.f.o
[ 48%] Building Fortran object SRC/CMakeFiles/lapack.dir/sstebz.f.o
[ 48%] Building Fortran object SRC/CMakeFiles/lapack.dir/sstein.f.o
[ 49%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorhr_col.f.o
[ 49%] Building Fortran object SRC/CMakeFiles/lapack.dir/ilaenv2stage.f.o
[ 49%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyevr.f.o
[ 49%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssycon.f.o
[ 49%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgesvj.f.o
[ 49%] Building Fortran object SRC/CMakeFiles/lapack.dir/spftri.f.o
[ 50%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrf_rk.f.o
[ 50%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssptrf.f.o
[ 50%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbgst.f.o
[ 50%] Building Fortran object SRC/CMakeFiles/lapack.dir/sstegr.f.o
[ 50%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgelq.f.o
[ 50%] Building Fortran object SRC/CMakeFiles/lapack.dir/strttf.f.o
[ 50%] Building Fortran object SRC/CMakeFiles/lapack.dir/slatsqr.f.o
[ 50%] Building Fortran object SRC/CMakeFiles/lapack.dir/slamtsqr.f.o
[ 50%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgetsls.f.o
[ 50%] Building Fortran object SRC/CMakeFiles/lapack.dir/stplqt2.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeqr.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/__/INSTALL/lsame.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/strcon.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/xerbla_array.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyswapr.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytf2.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/sstevd.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssysvx.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaorhr_col_getrfnp2.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/xerbla.f.o
[ 52%] Building Fortran object SRC/CMakeFiles/lapack.dir/__/INSTALL/sroundup_lwork.f.o
[ 52%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssysv_aa_2stage.f.o
[ 51%] Building Fortran object SRC/CMakeFiles/lapack.dir/stfttp.f.o
[ 52%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyevd.f.o
[ 53%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasrt.f.o
[ 53%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyev.f.o
[ 54%] Building Fortran object SRC/CMakeFiles/lapack.dir/stgexc.f.o
[ 54%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytri.f.o
[ 54%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaed9.f.o
[ 54%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssptri.f.o
[ 54%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasq6.f.o
[ 54%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytd2.f.o
[ 54%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaed7.f.o
[ 54%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrd_sy2sb.f.o
[ 54%] Building Fortran object SRC/CMakeFiles/lapack.dir/strti2.f.o
[ 55%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssteqr.f.o
[ 55%] Building Fortran object SRC/CMakeFiles/lapack.dir/sstedc.f.o
[ 55%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytf2_rk.f.o
[ 55%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaed8.f.o
[ 55%] Building Fortran object SRC/CMakeFiles/lapack.dir/ilatrans.f.o
[ 55%] Building Fortran object SRC/CMakeFiles/lapack.dir/__/INSTALL/second_NONE.f.o
[ 55%] Building Fortran object SRC/CMakeFiles/lapack.dir/stftri.f.o
[ 56%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyevd_2stage.f.o
[ 57%] Building Fortran object SRC/CMakeFiles/lapack.dir/stpcon.f.o
[ 57%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssycon_rook.f.o
[ 57%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytri_3.f.o
[ 57%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrf_aa.f.o
[ 57%] Building Fortran object SRC/CMakeFiles/lapack.dir/strrfs.f.o
[ 57%] Building Fortran object SRC/CMakeFiles/lapack.dir/sptsvx.f.o
[ 57%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasd8.f.o
[ 58%] Building Fortran object SRC/CMakeFiles/lapack.dir/sspev.f.o
[ 58%] Building Fortran object SRC/CMakeFiles/lapack.dir/strtri.f.o
[ 59%] Building Fortran object SRC/CMakeFiles/lapack.dir/spstrf.f.o
[ 60%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyevx.f.o
[ 60%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytri_rook.f.o
[ 60%] Building Fortran object SRC/CMakeFiles/lapack.dir/stptri.f.o
[ 60%] Building Fortran object SRC/CMakeFiles/lapack.dir/slartgp.f.o
[ 60%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaset.f.o
[ 60%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasdt.f.o
[ 60%] Building Fortran object SRC/CMakeFiles/lapack.dir/stgsyl.f.o
[ 60%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasdq.f.o
[ 61%] Building Fortran object SRC/CMakeFiles/lapack.dir/__/INSTALL/ilaver.f.o
[ 61%] Building Fortran object SRC/CMakeFiles/lapack.dir/stgsna.f.o
[ 61%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasq1.f.o
[ 61%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssysv_aa.f.o
[ 61%] Building Fortran object SRC/CMakeFiles/lapack.dir/ilauplo.f.o
[ 62%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssyrfs.f.o
[ 62%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasd3.f.o
[ 62%] Building Fortran object SRC/CMakeFiles/lapack.dir/strttp.f.o
[ 62%] Building Fortran object SRC/CMakeFiles/lapack.dir/strsna.f.o
[ 62%] Building Fortran object SRC/CMakeFiles/lapack.dir/slapy3.f.o
[ 62%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarrj.f.o
[ 62%] Building Fortran object SRC/CMakeFiles/lapack.dir/strevc3.f.o
[ 62%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasd6.f.o
[ 63%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasq3.f.o
[ 63%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrf_aa_2stage.f.o
[ 63%] Building Fortran object SRC/CMakeFiles/lapack.dir/slae2.f.o
[ 63%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssfrk.f.o
[ 63%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssysv.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasd4.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/__/INSTALL/slamch.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssterf.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssygvd.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/stprfs.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssb2st_kernels.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssygv.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/stgevc.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssycon_3.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/strexc.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytri2.f.o
[ 64%] Building Fortran object SRC/CMakeFiles/lapack.dir/stptrs.f.o
[ 65%] Building Fortran object SRC/CMakeFiles/lapack.dir/strevc.f.o
[ 66%] Building Fortran object SRC/CMakeFiles/lapack.dir/sstevr.f.o
[ 67%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytf2_rook.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/spteqr.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/sstev.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/slanhs.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/sstevx.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssygst.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/spprfs.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/sptcon.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/spbtrs.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/slansb.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/sptrfs.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssprfs.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/spptrs.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/sormr2.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/sppequ.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssygs2.f.o
[ 69%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggglm.f.o
[ 69%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgges3.f.o
[ 69%] Building Fortran object SRC/CMakeFiles/lapack.dir/spptri.f.o
[ 68%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssytrf.f.o
[ 69%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasyf_rook.f.o
[ 69%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqge.f.o
[ 69%] Building Fortran object SRC/CMakeFiles/lapack.dir/sspgst.f.o
[ 70%] Building Fortran object SRC/CMakeFiles/lapack.dir/sptts2.f.o
[ 70%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarz.f.o
[ 70%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgesvx.f.o
[ 70%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorm22.f.o
[ 71%] Building Fortran object SRC/CMakeFiles/lapack.dir/slansp.f.o
[ 71%] Building Fortran object SRC/CMakeFiles/lapack.dir/sormrz.f.o
[ 72%] Building Fortran object SRC/CMakeFiles/lapack.dir/slar2v.f.o
[ 72%] Building Fortran object SRC/CMakeFiles/lapack.dir/sposvx.f.o
[ 72%] Building Fortran object SRC/CMakeFiles/lapack.dir/spttrs.f.o
[ 72%] Building Fortran object SRC/CMakeFiles/lapack.dir/sormrq.f.o
[ 72%] Building Fortran object SRC/CMakeFiles/lapack.dir/ilaslr.f.o
[ 72%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorgtsqr.f.o
[ 72%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorm2r.f.o
[ 72%] Building Fortran object SRC/CMakeFiles/lapack.dir/slabrd.f.o
[ 72%] Building Fortran object SRC/CMakeFiles/lapack.dir/slartv.f.o
[ 72%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbevx.f.o
[ 73%] Building Fortran object SRC/CMakeFiles/lapack.dir/sspgvd.f.o
[ 73%] Building Fortran object SRC/CMakeFiles/lapack.dir/sormql.f.o
[ 73%] Building Fortran object SRC/CMakeFiles/lapack.dir/slanv2.f.o
[ 73%] Building Fortran object SRC/CMakeFiles/lapack.dir/sspevx.f.o
[ 73%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarfb.f.o
[ 73%] Building Fortran object SRC/CMakeFiles/lapack.dir/sspgv.f.o
[ 74%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgelqf.f.o
[ 74%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgehd2.f.o
[ 74%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbtrd.f.o
[ 74%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbgvd.f.o
[ 74%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbevd.f.o
[ 75%] Building Fortran object SRC/CMakeFiles/lapack.dir/sormbr.f.o
[ 75%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssptrd.f.o
[ 76%] Building Fortran object SRC/CMakeFiles/lapack.dir/sppsv.f.o
[ 76%] Building Fortran object SRC/CMakeFiles/lapack.dir/sppsvx.f.o
[ 76%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbgvx.f.o
[ 76%] Building Fortran object SRC/CMakeFiles/lapack.dir/spotri.f.o
[ 76%] Building Fortran object SRC/CMakeFiles/lapack.dir/sppcon.f.o
[ 76%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqsy.f.o
[ 76%] Building Fortran object SRC/CMakeFiles/lapack.dir/spbtf2.f.o
[ 76%] Building Fortran object SRC/CMakeFiles/lapack.dir/slals0.f.o
[ 76%] Building Fortran object SRC/CMakeFiles/lapack.dir/srscl.f.o
[ 76%] Building Fortran object SRC/CMakeFiles/lapack.dir/slangt.f.o
[ 77%] Building Fortran object SRC/CMakeFiles/lapack.dir/sormqr.f.o
[ 77%] Building Fortran object SRC/CMakeFiles/lapack.dir/spbequ.f.o
[ 77%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorml2.f.o
[ 77%] Building Fortran object SRC/CMakeFiles/lapack.dir/spbrfs.f.o
[ 77%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarf.f.o
[ 77%] Building Fortran object SRC/CMakeFiles/lapack.dir/spbsv.f.o
[ 77%] Building Fortran object SRC/CMakeFiles/lapack.dir/slange.f.o
[ 77%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarfx.f.o
[ 77%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbev.f.o
[ 77%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasyf_rk.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorgtr.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/slangb.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/sormtr.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/slantb.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasyf.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgetri.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqr3.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorgl2.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgglse.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgttrs.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeqrfp.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgels.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasy2.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeqlf.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/slahr2.f.o
[ 79%] Building Fortran object SRC/CMakeFiles/lapack.dir/sspgvx.f.o
[ 79%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgelq2.f.o
[ 79%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeqr2.f.o
[ 79%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgesdd.f.o
[ 79%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgerqf.f.o
[ 79%] Building Fortran object SRC/CMakeFiles/lapack.dir/slantp.f.o
[ 79%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgtsvx.f.o
[ 80%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqps.f.o
[ 80%] Building Fortran object SRC/CMakeFiles/lapack.dir/sormhr.f.o
[ 80%] Building Fortran object SRC/CMakeFiles/lapack.dir/slacn2.f.o
[ 80%] Building Fortran object SRC/CMakeFiles/lapack.dir/spptrf.f.o
[ 80%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgesvdx.f.o
[ 80%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgerfs.f.o
[ 80%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgesv.f.o
[ 81%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgtsv.f.o
[ 82%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggsvd3.f.o
[ 82%] Building Fortran object SRC/CMakeFiles/lapack.dir/slags2.f.o
[ 82%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorg2l.f.o
[ 82%]  82%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgelsy.f.o
2mBuilding Fortran object SRC/CMakeFiles/lapack.dir/slarfy.f.o
[ 82%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgesvd.f.o
[ 82%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaic1.f.o
[ 78%] Building Fortran object SRC/CMakeFiles/lapack.dir/sormr3.f.o
[ 82%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaexc.f.o
[ 82%] Building Fortran object SRC/CMakeFiles/lapack.dir/slagv2.f.o
[ 82%] Building Fortran object SRC/CMakeFiles/lapack.dir/slagtm.f.o
[ 82%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgehrd.f.o
[ 82%] Building Fortran object SRC/CMakeFiles/lapack.dir/shgeqz.f.o
[ 83%] Building Fortran object SRC/CMakeFiles/lapack.dir/sporfs.f.o
[ 83%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggbal.f.o
[ 84%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgesc2.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/slahqr.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarrv.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgelsd.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgghrd.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggsvp3.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeqp3.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/spoequ.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgtts2.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/spotf2.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/slag2.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/sspsv.f.o
[ 85%] Building Fortran object SRC/CMakeFiles/lapack.dir/slalsa.f.o
[ 86%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgges.f.o
[ 86%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorgtsqr_row.f.o
[ 86%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgttrf.f.o
[ 87%] Building Fortran object SRC/CMakeFiles/lapack.dir/sopmtr.f.o
[ 88%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarzt.f.o
[ 88%] Building Fortran object SRC/CMakeFiles/lapack.dir/spocon.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarfb_gett.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarfgp.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgetf2.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/sopgtr.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/slatbs.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorghr.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgghd3.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/slapll.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/slantr.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/spbstf.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorgr2.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/sormlq.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorgbr.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/slapmt.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarzb.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/slauum.f.o
[ 89%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgeql2.f.o
[ 89%]  90%] Building Fortran object SRC/CMakeFiles/lapack.dir/slasyf_aa.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorgql.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/slatdf.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgelst.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqp2.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggesx.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggevx.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqr0.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgerq2.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggbak.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/slatrs.f.o
[ 91%] Building Fortran object SRC/CMakeFiles/lapack.dir/spbsvx.f.o
[ 92%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaein.f.o
[ 92%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqsb.f.o
[ 92%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorm2l.f.o
[ 92%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarfg.f.o
[ 93%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqr1.f.o
2mBuilding Fortran object SRC/CMakeFiles/lapack.dir/sgtrfs.f.o
[ 90%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggev3.f.o
[ 94%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorglq.f.o
[ 94%] Building Fortran object SRC/CMakeFiles/lapack.dir/slatps.f.o
[ 94%] Building Fortran object SRC/CMakeFiles/lapack.dir/slauu2.f.o
[ 94%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorg2r.f.o
[ 94%] Building[ 94%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgelss.f.o
[ 95%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgetc2.f.o
[ 95%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorgrq.f.o
[ 95%] Building Fortran object SRC/CMakeFiles/lapack.dir/slargv.f.o
[ 95%] Building Fortran object SRC/CMakeFiles/lapack.dir/spbtrf.f.o
[ 95%] Building Fortran object SRC/CMakeFiles/lapack.dir/slatrd.f.o
[ 95%] Building Fortran object SRC/CMakeFiles/lapack.dir/slatrz.f.o
 Fortran object SRC/CMakeFiles/lapack.dir/slaqsp.f.o
[ 95%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggev.f.o
[ 96%] Building Fortran object SRC/CMakeFiles/lapack.dir/slatrs3.f.o
[ 96%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqr4.f.o
[ 97%] Building Fortran object SRC/CMakeFiles/lapack.dir/ssbgv.f.o
[ 97%] Building Fortran object SRC/CMakeFiles/lapack.dir/sggqrf.f.o
[ 97%] Building Fortran object SRC/CMakeFiles/lapack.dir/sgtcon.f.o
[ 98%] Building Fortran object SRC/CMakeFiles/lapack.dir/spbcon.f.o
[ 98%] Building Fortran object SRC/CMakeFiles/lapack.dir/slar1v.f.o
[ 98%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqtr.f.o
[ 98%] Building Fortran object SRC/CMakeFiles/lapack.dir/slaqr2.f.o
[ 98%] Building Fortran object SRC/CMakeFiles/lapack.dir/sorgqr.f.o
[ 99%] Building Fortran object SRC/CMakeFiles/lapack.dir/slarmm.f.o
style suggestion: Use '>=' instead of '.ge.'
   --> /Users/ubaid/Desktop/OpenSource/lapack/SRC/sgedmd.f90:644:27
    |
644 |                IF ( SCALE .GE. (OFL / ROOTSC) ) THEN
    |                           ^^^^ help: write this as '>='

style suggestion: Use '>=' instead of '.ge.'
   --> /Users/ubaid/Desktop/OpenSource/lapack/SRC/sgedmd.f90:717:27
    |
717 |                IF ( SCALE .GE. (OFL / ROOTSC) ) THEN
    |                           ^^^^ help: write this as '>='


Note: Please report unclear, confusing or incorrect messages as bugs at
https://github.com/lfortran/lfortran/issues.
[100%] Linking Fortran static library ../lib/liblapack.a
warning: /Library/Developer/CommandLineTools/usr/bin/ranlib: archive library: ../lib/liblapack.a the table of contents is empty (no object file members in the library define global symbols)
[100%] Built target lapack
Install the project...
-- Install configuration: "Release"
-- Installing: /Users/ubaid/ext/lapack/cmake/lapack-3.11.0/lapack-targets.cmake
-- Installing: /Users/ubaid/ext/lapack/cmake/lapack-3.11.0/lapack-targets-release.cmake
-- Installing: /Users/ubaid/ext/lapack/pkgconfig/lapack.pc
-- Installing: /Users/ubaid/ext/lapack/cmake/lapack-3.11.0/lapack-config.cmake
-- Installing: /Users/ubaid/ext/lapack/cmake/lapack-3.11.0/lapack-config-version.cmake
-- Installing: /Users/ubaid/ext/lapack/pkgconfig/blas.pc
-- Installing: /Users/ubaid/ext/lapack/libblas.a
warning: /Library/Developer/CommandLineTools/usr/bin/ranlib: archive library: /Users/ubaid/ext/lapack/libblas.a the table of contents is empty (no object file members in the library define global symbols)
-- Installing: /Users/ubaid/ext/lapack/liblapack.a
warning: /Library/Developer/CommandLineTools/usr/bin/ranlib: archive library: /Users/ubaid/ext/lapack/liblapack.a the table of contents is empty (no object file members in the library define global symbols)
```
