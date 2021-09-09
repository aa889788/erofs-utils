cmake_minimum_required(VERSION 3.20)

# set the project name 
project(liblog) 
set(CMAKE_C_COMPILER clang)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "-DLIBLOG_LOG_TAG=1006 -DSNET_EVENT_LOG_TAG=1397638484")
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/../lib)

# aux_source_directory(. ALL_SRCS)
# add the executable 
ADD_LIBRARY(log STATIC 
       log_event_list.cpp 
       log_event_write.cpp 
       logger_name.cpp 
       logger_read.cpp
       logger_write.cpp 
       logprint.cpp
       properties.cpp
)

include_directories(
        ../libcutils/include
        ../libbase/include
        include
)

