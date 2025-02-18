# CMake generated Testfile for 
# Source directory: /Users/Jonathan/Documents/GitHub/organicmaps/transit/transit_experimental_tests
# Build directory: /Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release/transit/transit_experimental_tests
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[transit_experimental_tests]=] "/Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release/transit_experimental_tests" "--data_path=/Users/Jonathan/Documents/GitHub/organicmaps/data" "--user_resource_path=/Users/Jonathan/Documents/GitHub/organicmaps/data")
set_tests_properties([=[transit_experimental_tests]=] PROPERTIES  LABELS "omim-test" WORKING_DIRECTORY "/Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release" _BACKTRACE_TRIPLES "/Users/Jonathan/Documents/GitHub/organicmaps/cmake/OmimTesting.cmake;84;add_test;/Users/Jonathan/Documents/GitHub/organicmaps/cmake/OmimTesting.cmake;42;omim_add_ctest;/Users/Jonathan/Documents/GitHub/organicmaps/transit/transit_experimental_tests/CMakeLists.txt;8;omim_add_test;/Users/Jonathan/Documents/GitHub/organicmaps/transit/transit_experimental_tests/CMakeLists.txt;0;")
