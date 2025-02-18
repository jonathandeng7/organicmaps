# CMake generated Testfile for 
# Source directory: /Users/Jonathan/Documents/GitHub/organicmaps/routing/routing_benchmarks
# Build directory: /Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release/routing/routing_benchmarks
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[routing_benchmarks]=] "/Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release/routing_benchmarks" "--data_path=/Users/Jonathan/Documents/GitHub/organicmaps/data" "--user_resource_path=/Users/Jonathan/Documents/GitHub/organicmaps/data")
set_tests_properties([=[routing_benchmarks]=] PROPERTIES  LABELS "omim-test" WORKING_DIRECTORY "/Users/Jonathan/Documents/GitHub/organicmaps/omim-build-release" _BACKTRACE_TRIPLES "/Users/Jonathan/Documents/GitHub/organicmaps/cmake/OmimTesting.cmake;84;add_test;/Users/Jonathan/Documents/GitHub/organicmaps/cmake/OmimTesting.cmake;42;omim_add_ctest;/Users/Jonathan/Documents/GitHub/organicmaps/routing/routing_benchmarks/CMakeLists.txt;13;omim_add_test;/Users/Jonathan/Documents/GitHub/organicmaps/routing/routing_benchmarks/CMakeLists.txt;0;")
