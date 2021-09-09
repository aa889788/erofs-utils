cmake_minimum_required(VERSION 3.20)

# set the project name 
project(libuuud) 
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_CXX_STANDARD 17)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/../lib)

# aux_source_directory(. ALL_SRCS)
# add the executable 
ADD_LIBRARY(uuid STATIC 
        clear.c
        compare.c
        copy.c
        gen_uuid.c
        isnull.c
        pack.c
        parse.c
        unpack.c
        unparse.c
        uuid_time.c
)

include_directories(
        include
)

