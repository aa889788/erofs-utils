cmake_minimum_required(VERSION 3.20)

# set the project name 
project(erofs-utils) 
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_FLAGS "-DLZ4_ENABLED -DLZ4HC_ENABLED -DHAVE_LINUX_TYPES_H -DHAVE_LIBSELINUX -DWITH_ANDROID")

# aux_source_directory(. ALL_SRCS)
# add the executable 
ADD_LIBRARY(erofs-utils STATIC 
      config.c io.c 
      cache.c
      super.c
      inode.c
      xattr.c 
      exclude.c 
	  namei.c data.c
	  compress.c
	  compressor.c zmap.c decompress.c
      compressor_lz4.c
      compressor_lz4hc.c
      block_list.c
)

include_directories(
        ../include
        ../libselinux/include
        ../libcutils/include
)

