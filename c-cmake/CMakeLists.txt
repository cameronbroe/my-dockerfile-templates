cmake_minimum_required(VERSION 3.13)
project(app C)
set(CMAKE_C_STANDARD 99)

add_executable(app "${CMAKE_CURRENT_LIST_DIR}/main.c")