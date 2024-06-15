
#include <tests/test_functions.h>

testStatus_t test_check_prime(uint8_t *error_message)
{
	returnCodesPrime_t return_code = STATUS_IS_PRIME;
	// test using desired inputs
	uint16_t n = 9157; // prime number
	return_code = check_prime(n);
	if(STATUS_IS_PRIME != return_code)
	{
		sprintf((char *) error_message, "Check failed for: %u!\n", n);
		return STATUS_FAIL;
	}

	n = 0xFFFF; // NOT prime number
	return_code = check_prime(n);
	if(STATUS_ISNOT_PRIME != return_code)
	{
		sprintf((char *) error_message, "Check failed for: %u!\n", n);
		return STATUS_FAIL;
	}
	n = 1; // prime number
	return_code = check_prime(n);
	if(STATUS_IS_PRIME != return_code)
	{
		sprintf((char *) error_message, "Check failed for: %u!\n", n);
		return STATUS_FAIL;
	}
	n = 2; // prime number
	return_code = check_prime(n);
	if(STATUS_IS_PRIME != return_code)
	{
		sprintf((char *) error_message, "Check failed for: %u!\n", n);
		return STATUS_FAIL;
	}

	n = 0x0000; // Error return code
	return_code = check_prime(n);
	if(STATUS_INVALD_INPUT != return_code)
	{
		sprintf((char *) error_message, "Check failed for: %u!\n", n);
		return STATUS_FAIL;
	}

	return STATUS_PASS;
}
