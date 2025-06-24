/*
 * test_utils.c
 *
 *  Created on: 27 Jun 2023
 *      Author: nxf72157
 */

#include <test_utils.h>


testStatus_t test_fencing(uint8_t *buf, uint8_t length, uint8_t fencing)
{

	for(uint8_t i = 0; i < FENCING_SIZE; i++)
	{
		if(*(buf - i - 1) != fencing)
		{
			return STATUS_FAIL;
		}
		if(*(buf + i + length) != fencing)
		{
			return STATUS_FAIL;
		}
	}
	return STATUS_PASS;
}

testStatus_t test_check_result(uint8_t *actual_buf, uint8_t *expected_buf, uint8_t length)
{

	for(uint8_t i = 0; i < length; i++)
	{
		if(actual_buf[i] != expected_buf[i])
		{
			return STATUS_FAIL;
		}
	}
	return STATUS_PASS;
}

uint8_t *test_add_fencing(uint8_t *buf, uint8_t length, uint8_t fencing)
{
	for(uint8_t i = 0; i < FENCING_SIZE; i++)
	{
		buf[i] = fencing;
		buf[i + FENCING_SIZE + length] = fencing;
	}
	return buf + FENCING_SIZE;
}
