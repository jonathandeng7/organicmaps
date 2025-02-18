# CMake generated Testfile for 
# Source directory: /Users/Jonathan/Documents/GitHub/organicmaps/search/search_integration_tests
# Build directory: /Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release/search/search_integration_tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[search_integration_tests]=] "/Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release/search_integration_tests" "--data_path=/Users/Jonathan/Documents/GitHub/organicmaps/data" "--user_resource_path=/Users/Jonathan/Documents/GitHub/organicmaps/data")
set_tests_properties([=[search_integration_tests]=] PROPERTIES  LABELS "omim-test" WORKING_DIRECTORY "/Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release" _BACKTRACE_TRIPLES "/Users/Jonathan/Documents/GitHub/organicmaps/cmake/OmimTesting.cmake;84;add_test;/Users/Jonathan/Documents/GitHub/organicmaps/cmake/OmimTesting.cmake;42;omim_add_ctest;/Users/Jonathan/Documents/GitHub/organicmaps/search/search_integration_tests/CMakeLists.txt;16;omim_add_test;/Users/Jonathan/Documents/GitHub/organicmaps/search/search_integration_tests/CMakeLists.txt;0;")
