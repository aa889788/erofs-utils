cmake_minimum_required(VERSION 3.20)
set(TARGET selinux)

project(${TARGET})
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/../lib)

set(CMAKE_C_FLAGS "-DUSE_PCRE2 -DPCRE2_CODE_UNIT_WIDTH=8 -DBUILD_HOST -DNO_DB_BACKEND -DNO_X_BACKEND -DNO_MEDIA_BACKEND -D_GNU_SOURCE -DDISABLE_BOOL -DNO_PERSISTENTLY_STORED_PATTERNS -DDISABLE_SETRANS -DDISABLE_SETRANS")

include_directories(include ../../include)

set(SRC_LIST
        src/canonicalize_context.c
        src/selinux_config.c
        src/label_file.c
        src/regex.c
        src/callbacks.c
        src/freecon.c
        src/label_backends_android.c
        src/label.c
        src/label_support.c
        src/matchpathcon.c
        src/setrans_client.c
        src/sha1.c
        src/init.c
        src/lgetfilecon.c
        #src/load_policy.c
        src/lsetfilecon.c
        )

add_library(${TARGET} ${SRC_LIST})
