cmake_minimum_required(VERSION 3.13)
project(app)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(app "${CMAKE_CURRENT_LIST_DIR}/main.cpp")