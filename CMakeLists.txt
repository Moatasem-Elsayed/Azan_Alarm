
cmake_minimum_required(VERSION 3.10)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

project(azan_alarm)

set (SRC_FILES main.cpp
client.cpp
parser.cpp
clockmanger.cpp
)
add_executable(${PROJECT_NAME}   ${SRC_FILES})

