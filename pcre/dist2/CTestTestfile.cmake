# CMake generated Testfile for 
# Source directory: /root/erofs-utils/pcre/dist2
# Build directory: /root/erofs-utils/pcre/dist2
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(pcre2_test "sh" "/root/erofs-utils/pcre/dist2/pcre2_test.sh")
set_tests_properties(pcre2_test PROPERTIES  _BACKTRACE_TRIPLES "/root/erofs-utils/pcre/dist2/CMakeLists.txt;827;ADD_TEST;/root/erofs-utils/pcre/dist2/CMakeLists.txt;0;")
add_test(pcre2_grep_test "sh" "/root/erofs-utils/pcre/dist2/pcre2_grep_test.sh")
set_tests_properties(pcre2_grep_test PROPERTIES  _BACKTRACE_TRIPLES "/root/erofs-utils/pcre/dist2/CMakeLists.txt;840;ADD_TEST;/root/erofs-utils/pcre/dist2/CMakeLists.txt;0;")
