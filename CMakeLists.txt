cmake_minimum_required(VERSION 3.14 FATAL_ERROR)

project(stdexecExample)

# For more information on how to add CPM to your project, see: https://github.com/cpm-cmake/CPM.cmake#adding-cpm
include(./cmake/CPM.cmake)

CPMAddPackage(
  NAME stdexec
  GITHUB_REPOSITORY NVIDIA/stdexec
  GIT_TAG main 
)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

add_executable(sender)
target_sources(sender PRIVATE main.cpp)
target_link_libraries(sender STDEXEC::stdexec)
install(TARGETS sender)

