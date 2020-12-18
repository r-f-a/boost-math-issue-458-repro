# Usage

- Download and unzip Boost
- `git clone https://github.com/r-f-a/boost-math-issue-458-repro.git`
- Run one of these:
  - `BOOST_MATH_INCLUDE_DIR=path_to_boost ./build-x64-linux.sh`: Build RelWithDebInfo with clang
  - `BOOST_MATH_INCLUDE_DIR=path_to_boost ./build-x64-linux.sh gcc`: Build RelWithDebInfo with gcc
  - `BOOST_MATH_INCLUDE_DIR=path_to_boost ./build-x64-linux.sh debug`: Build Debug with clang
  - `BOOST_MATH_INCLUDE_DIR=path_to_boost ./build-x64-linux.sh debug gcc`: Build Debug with gcc

E.g.: `BOOST_MATH_INCLUDE_DIR=~/src/boost_1_74_0 ./build-x64-linux.sh`