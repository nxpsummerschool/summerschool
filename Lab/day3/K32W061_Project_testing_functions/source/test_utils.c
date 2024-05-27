
#include <test_utils.h>


/**
 * @brief Tests that the fencing bytes are still inplace
 *
 * @param[in]    buf  		The buffer start address for which we are performing the fencing check
 * @param[in]    length  	The length of this buffer
 * @param[in]    fencing  	The fencing value to be checked
 *
 * @retval #STATUS_FAIL    		if fencing check is failing (fencing bytes were overwritten by the FUT)
 * @retval #STATUS_PASS 		if fencing check is passing (fencing bytes were not overwritten by the FUT)
 * */

testStatus_t test_fencing(uint8_t *buf, uint8_t length, uint8_t fencing)
{
	/* TODO: Add implementation */
}

/**
 * @brief Checks the resulting values against the expected ones
 *
 * @param[in]    actual_buf  	The actual buffer start address
 * @param[in]    expected_buf  	The expected buffer values start address
 * @param[in]    length		  	The length of these buffers
 *
 * @retval #STATUS_FAIL    		is returned for the first occurrence that is not equal to the expected one
 * @retval #STATUS_PASS 		the actual buffer contains the same values as the expected ones
 * */

testStatus_t test_check_result(uint8_t *actual_buf, uint8_t *expected_buf, uint8_t length)
{
	/* TODO: Add implementation */
}

/**
 * @brief Tests that the fencing bytes are still inplace
 *
 * @param[in]    buf  		The buffer start address for which we are adding the fencing
 * @param[in]    length  	The length of this buffer
 * @param[in]    fencing  	The fencing value to be added
 *
 * @retval #buf + FENCING_SIZE <-- the start address of the buffer that will be used for testing
 * */

uint8_t *test_add_fencing(uint8_t *buf, uint8_t length, uint8_t fencing)
{
	/* TODO: Add implementation */
}

