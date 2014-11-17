# /tests/CMakeBuildTestNoErrorOnTestFailWhereFailAllowedVerify.cmake
#
# Check that there are no errors even though the test failed.
#
# See LICENCE.md for Copyright information

include (CMakeUnit)

set (TEST_OUTPUT "${CMAKE_CURRENT_BINARY_DIR}/TEST.output")
assert_file_does_not_have_line_matching ("${TEST_OUTPUT}"
                                         "^.*failed with.*$")
