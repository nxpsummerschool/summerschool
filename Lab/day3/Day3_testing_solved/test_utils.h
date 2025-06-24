/*
 * test_utils.h
 *
 *  Created on: 27 Jun 2023
 *      Author: nxf72157
 */

#ifndef TEST_UTILS_H_
#define TEST_UTILS_H_

#include <stdint.h>

#define FENCING_SIZE 	4
#define INPUT_FENCING 	0xDE
#define OUTPUT_FENCING 	0xAD

typedef enum testStatus{
	STATUS_PASS,
	STATUS_FAIL
} testStatus_t;

testStatus_t test_fencing(uint8_t *buf, uint8_t length, uint8_t fencing);
testStatus_t test_check_result(uint8_t *actual_buf, uint8_t *expected_buf, uint8_t length);
uint8_t *test_add_fencing(uint8_t *buf, uint8_t length, uint8_t fencing);

#endif /* TEST_UTILS_H_ */
