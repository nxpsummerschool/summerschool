
#include <src/FUTs.h>
#include <string.h>
#include <test_utils.h>

testStatus_t test_memcopy(memcpy_func FUT, uint8_t *error_message, const void *test_params)
{
	testStatus_t status = STATUS_PASS;

	uint8_t requested_bytes = *((uint8_t *) test_params);
	uint8_t *pReceivedInput = ((uint8_t *) test_params) + sizeof(uint8_t);
	uint8_t input[256] = {0x00};
	uint8_t output[256] = {0x00};

	// add fencing for the buffers to be used by memcopy
	uint8_t *pInput = test_add_fencing(input, requested_bytes, INPUT_FENCING);
	uint8_t *pOutput = test_add_fencing(output, requested_bytes, OUTPUT_FENCING);

	// copy the received buffer into the input buffer that will be used for testing
	for(uint8_t i = 0; i < requested_bytes; i++)
		pInput[i] = pReceivedInput[i];

	// test using received inputs
	FUT(pOutput, pInput, requested_bytes);

	// check fencing on the input buffer
	status = test_fencing(pInput, requested_bytes, INPUT_FENCING);
	if(STATUS_PASS != status)
	{
		sprintf((char *) error_message, "Fencing Error: Input fencing failed!\n");
		return status;
	}
	// check fencing on the output buffer
	status = test_fencing(pOutput, requested_bytes, OUTPUT_FENCING);
	if(STATUS_PASS != status)
	{
		sprintf((char *) error_message, "Fencing Error: Output fencing failed!\n");
		return status;
	}

	// check the result
	status = test_check_result(pOutput, pReceivedInput, requested_bytes);
	if(STATUS_PASS != status)
	{
		sprintf((char *) error_message, "Assertion Error: Buffers do not match!\n");
		return status;
	}

	return STATUS_PASS;
}
