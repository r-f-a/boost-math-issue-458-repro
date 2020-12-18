#!/bin/sh -e
#
# Build for x64 Linux.
#
# Requirements:
#   - git, cmake, unzip and a c++ compiler such as g++ or clang.
#
# Usage:
#   - BOOST_MATH_INCLUDE_DIR=path_to_boost ./build-x64-linux.sh: Build RelWithDebInfo with clang
#   - BOOST_MATH_INCLUDE_DIR=path_to_boost ./build-x64-linux.sh gcc: Build RelWithDebInfo with gcc
#   - BOOST_MATH_INCLUDE_DIR=path_to_boost ./build-x64-linux.sh debug: Build Debug with clang
#   - BOOST_MATH_INCLUDE_DIR=path_to_boost ./build-x64-linux.sh debug gcc: Build Debug with gcc

if [ -z "${BOOST_MATH_INCLUDE_DIR}" ]
then
  echo "Set BOOST_MATH_INCLUDE_DIR env variable"
  exit 1
fi

build_type="RelWithDebInfo"
if [ "$1" = "debug" -o "$2" = "debug" ]
then
  build_type="Debug"
fi

clang_addon="-DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++"
if [ "$1" = "gcc" -o "$2" = "gcc" ]
then
  clang_addon=""
fi

triplet="x64-linux"

rootDir="$(X= cd -- "$(dirname -- "$0")" && pwd -P)"
cd ${rootDir}

# Config
rm -f "out/build/${triplet}/CMakeCache.txt"
cmake -S . -B "out/build/${triplet}" -DCMAKE_BUILD_TYPE=${build_type} -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DBOOST_MATH_INCLUDE_DIR:FILEPATH="${BOOST_MATH_INCLUDE_DIR}" \
  ${clang_addon}
  

# Build
cd out/build/${triplet}
cmake --build . --parallel 8 --config ${build_type} -v

# Test
ctest -C ${build_type} -VV