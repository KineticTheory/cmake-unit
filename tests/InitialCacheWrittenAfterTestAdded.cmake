# /tests/InitialCacheWrittenAfterTestAdded.cmake
#
# Ensure that ${CMAKE_CURRENT_BINARY_DIR}/${TEST_NAME}/initial_cache.cmake
# is written out after add_cmake_test
#
# See LICENCE.md for Copyright information

set (TEST_NAME SampleTest)
file (WRITE "${CMAKE_CURRENT_SOURCE_DIR}/${TEST_NAME}.cmake" "")

include (CMakeUnit)
include (CMakeUnitRunner)

bootstrap_cmake_unit ()

add_cmake_test (${TEST_NAME})

set (INITIAL_CACHE_FILE
     ${CMAKE_CURRENT_BINARY_DIR}/${TEST_NAME}/initial_cache.cmake)
assert_file_exists (${INITIAL_CACHE_FILE})
