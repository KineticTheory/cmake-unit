# /tests/VariableIs.cmake
#
# Check the _variable_is matcher.
#
# See LICENCE.md for Copyright information

include (CMakeUnit)

set (STRING_VARIABLE "value")

_variable_is (STRING_VARIABLE STRING EQUAL "value" EXPECT_EQUAL)
_variable_is (STRING_VARIABLE STRING EQUAL "nvalue" EXPECT_UNEQUAL)
_variable_is (STRING_VARIABLE STRING GREATER "valud" EXPECT_LESS)
_variable_is (STRING_VARIABLE STRING GREATER "valuf" EXPECT_NOT_LESS)
_variable_is (STRING_VARIABLE STRING LESS "valuf" EXPECT_GREATER)
_variable_is (STRING_VARIABLE STRING LESS "valud" EXPECT_NOT_GREATER)

assert_true (${EXPECT_EQUAL})
assert_false (${EXPECT_UNEQUAL})
assert_true (${EXPECT_LESS})
assert_false (${EXPECT_NOT_LESS})
assert_true (${EXPECT_GREATER})
assert_false (${EXPECT_NOT_GREATER})

set (INTEGER_VARIABLE 1)

# Integers
_variable_is (INTEGER_VARIABLE INTEGER EQUAL 1 EXPECT_EQUAL)
_variable_is (INTEGER_VARIABLE INTEGER EQUAL 2 EXPECT_UNEQUAL)
_variable_is (INTEGER_VARIABLE INTEGER GREATER 0 EXPECT_LESS)
_variable_is (INTEGER_VARIABLE INTEGER GREATER 2 EXPECT_NOT_LESS)
_variable_is (INTEGER_VARIABLE INTEGER LESS 2 EXPECT_GREATER)
_variable_is (INTEGER_VARIABLE INTEGER LESS 0 EXPECT_NOT_GREATER)

assert_true (${EXPECT_EQUAL})
assert_false (${EXPECT_UNEQUAL})
assert_true (${EXPECT_LESS})
assert_false (${EXPECT_NOT_LESS})
assert_true (${EXPECT_GREATER})
assert_false (${EXPECT_NOT_GREATER})

set (BOOL_VARIABLE ON)

# Bool
_variable_is (BOOL_VARIABLE BOOL EQUAL ON EXPECT_EQUAL)
_variable_is (BOOL_VARIABLE BOOL EQUAL OFF EXPECT_UNEQUAL)

assert_true (${EXPECT_EQUAL})
assert_false (${EXPECT_UNEQUAL})
