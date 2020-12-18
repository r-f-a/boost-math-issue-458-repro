cmake_minimum_required (VERSION 3.8)

add_executable (boost-math-issue-458 "boost-math-issue-458.cpp")

if (CMAKE_CXX_COMPILER_ID  STREQUAL Clang)
  message(STATUS "Using Clang compile option: -ffp-exception-behavior=maytrap")
  target_compile_options(boost-math-issue-458 PRIVATE -ffp-exception-behavior=maytrap)
endif()

if (BOOST_MATH_INCLUDE_DIR)
  # Building with a custom Boost Math include path
  message(STATUS "Using BOOST_MATH_INCLUDE_DIR: ${BOOST_MATH_INCLUDE_DIR}")
  target_include_directories(boost-math-issue-458 SYSTEM PRIVATE
    $<BUILD_INTERFACE:${BOOST_MATH_INCLUDE_DIR}>)
else()
  # Otherwise assuming a global or vcpkg-managed Boost Math installation
  find_package(Boost REQUIRED)
  target_link_libraries(boost-math-issue-458 PRIVATE Boost::boost)
endif()

add_test(NAME boost-math-issue-458 COMMAND boost-math-issue-458)