cmake_minimum_required(VERSION 3.20)

# set the project name 
project(mkfs.erofs) 
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_EXE_LINKER_FLAGS "-static")
# set(CMAKE_C_FLAGS "-DHAVE_LINUX_TYPES_H -DHAVE_LIBSELINUX -DWITH_ANDROID")
# set(CMAKE_CXX_FLAGS "-DHAVE_LINUX_TYPES_H -DHAVE_LIBSELINUX -DWITH_ANDROID")
add_definitions(
       -DHAVE_LINUX_TYPES_H
       -DHAVE_LIBSELINUX
       -DWITH_ANDROID
       -DHAVE_LIBUUID
)

link_directories(
       ../lib
       ../pcre/dist2
       ../lz4/build/cmake/
)
add_executable(mkfs.erofs 
       main.c
)
target_link_libraries(mkfs.erofs 
       erofs-utils
       cutils
       selinux
       base
       log
       pcre2-8
       lz4
       uuid
)

include_directories(
        ../include
        ../libselinux/include
        ../libcutils/include
        ../libuuid
)
