
#ifndef TESTS_TEST_FUNCTIONS_H_
#define TESTS_TEST_FUNCTIONS_H_

#include <src/FUTs.h>
#include <stdio.h>
#include <string.h>
#include <test_utils.h>

testStatus_t test_memcopy(memcpy_func FUT, uint8_t *error_message, const void *test_params);
testStatus_t test_check_prime(uint8_t *error_message);

#endif /* TESTS_TEST_FUNCTIONS_H_ */
