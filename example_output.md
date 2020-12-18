# Clang - Release

-- Using CMAKE_C_COMPILER: clang
-- Using CMAKE_CXX_COMPILER: clang++
-- Using CMAKE_BUILD_TYPE: RelWithDebInfo
-- Using BOOST_MATH_INCLUDE_DIR: /mnt/c/src/.external/boost_1_74_0

1: Before: 0
1: After gamma_distribution: 0
1: Result: 0.000252324
1: After pdf: 40
1: After pdf (summary): Overflow, Inexact


# Clang - Debug

-- Using CMAKE_C_COMPILER: clang
-- Using CMAKE_CXX_COMPILER: clang++
-- Using CMAKE_BUILD_TYPE: Debug
-- Using BOOST_MATH_INCLUDE_DIR: /mnt/c/src/.external/boost_1_74_0

1: Before: 0
1: After gamma_distribution: 0
1: Result: 0.000252324
1: After pdf: 32
1: After pdf (summary): Inexact


# GCC - Release

-- Using CMAKE_C_COMPILER:
-- Using CMAKE_CXX_COMPILER:
-- Using CMAKE_BUILD_TYPE: RelWithDebInfo
-- The CXX compiler identification is GNU 9.3.0
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Using BOOST_MATH_INCLUDE_DIR: /mnt/c/src/.external/boost_1_74_0

1: Before: 0
1: After gamma_distribution: 0
1: Result: 0.000252324
1: After pdf: 32
1: After pdf (summary): Inexact


# GCC - Debug

-- Using CMAKE_C_COMPILER:
-- Using CMAKE_CXX_COMPILER:
-- Using CMAKE_BUILD_TYPE: Debug
-- The CXX compiler identification is GNU 9.3.0
-- Check for working CXX compiler: /usr/bin/c++
-- Check for working CXX compiler: /usr/bin/c++ -- works
-- Using BOOST_MATH_INCLUDE_DIR: /mnt/c/src/.external/boost_1_74_0

1: Before: 0
1: After gamma_distribution: 0
1: Result: 0.000252324
1: After pdf: 32
1: After pdf (summary): Inexact