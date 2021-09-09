cmake_minimum_required(VERSION 3.20)

# set the project name 
project(libbase) 
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_CXX_STANDARD 17)

# aux_source_directory(. ALL_SRCS)
# add the executable 
ADD_LIBRARY(base STATIC 
        abi_compatibility.cpp
        chrono_utils.cpp
        cmsg.cpp
        file.cpp
        hex.cpp
        logging.cpp
        mapped_file.cpp
        parsebool.cpp
        parsenetaddress.cpp
        process.cpp
        properties.cpp
        stringprintf.cpp
        strings.cpp
        threads.cpp
        test_utils.cpp
)

include_directories(
        include
        ../liblog/include
)