project(smesh_test_cmake NONE)
cmake_minimum_required(VERSION 3.10)

MESSAGE(STATUS "########################")
MESSAGE(STATUS "cmake checking for smesh")
MESSAGE(STATUS "########################")
find_package(SMESH REQUIRED)