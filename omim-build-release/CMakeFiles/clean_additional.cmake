# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Release")
  file(REMOVE_RECURSE
  "openlr/openlr_match_quality/openlr_assessment_tool/CMakeFiles/openlr_assessment_tool_autogen.dir/AutogenUsed.txt"
  "openlr/openlr_match_quality/openlr_assessment_tool/CMakeFiles/openlr_assessment_tool_autogen.dir/ParseCache.txt"
  "openlr/openlr_match_quality/openlr_assessment_tool/openlr_assessment_tool_autogen"
  "qt/CMakeFiles/desktop_autogen.dir/AutogenUsed.txt"
  "qt/CMakeFiles/desktop_autogen.dir/ParseCache.txt"
  "qt/desktop_autogen"
  "qt/qt_common/CMakeFiles/qt_common_autogen.dir/AutogenUsed.txt"
  "qt/qt_common/CMakeFiles/qt_common_autogen.dir/ParseCache.txt"
  "qt/qt_common/qt_common_autogen"
  "search/search_quality/assessment_tool/CMakeFiles/assessment_tool_autogen.dir/AutogenUsed.txt"
  "search/search_quality/assessment_tool/CMakeFiles/assessment_tool_autogen.dir/ParseCache.txt"
  "search/search_quality/assessment_tool/assessment_tool_autogen"
  )
endif()
