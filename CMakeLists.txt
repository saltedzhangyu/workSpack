# cmake_minimum_required(VERSION <specify CMake version here>)
project(CWorkSpace)

set(CMAKE_CXX_STANDARD 14)

add_executable(CWorkSpace circle/area.cpp circle/main.cpp circle/circle.h add/test.cpp equation.cpp)