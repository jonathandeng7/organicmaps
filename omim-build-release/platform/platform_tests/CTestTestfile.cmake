# CMake generated Testfile for 
# Source directory: /Users/Jonathan/Documents/GitHub/organicmaps/platform/platform_tests
# Build directory: /Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release/platform/platform_tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[platform_tests]=] "/Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release/platform_tests" "--data_path=/Users/Jonathan/Documents/GitHub/organicmaps/data" "--user_resource_path=/Users/Jonathan/Documents/GitHub/organicmaps/data")
set_tests_properties([=[platform_tests]=] PROPERTIES  FIXTURES_REQUIRED "TestServer" LABELS "omim-test" WORKING_DIRECTORY "/Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release" _BACKTRACE_TRIPLES "/Users/Jonathan/Documents/GitHub/organicmaps/cmake/OmimTesting.cmake;84;add_test;/Users/Jonathan/Documents/GitHub/organicmaps/cmake/OmimTesting.cmake;42;omim_add_ctest;/Users/Jonathan/Documents/GitHub/organicmaps/platform/platform_tests/CMakeLists.txt;22;omim_add_test;/Users/Jonathan/Documents/GitHub/organicmaps/platform/platform_tests/CMakeLists.txt;0;")
