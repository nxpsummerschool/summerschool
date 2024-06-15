
#ifndef SRC_FUCTIONS_UNDER_TEST_H_
#define SRC_FUCTIONS_UNDER_TEST_H_

#include <stdint.h>

/* MEMCOPY function declarations and typedefs */
typedef void* memcpy_func(void *dest, void *src, uint8_t n);

/*
 * @brief Checks if a received input is a prime number or not.
 * The memcopy implementations have the following format:
 * 			void * memcopy (void * destination, const void * source, uint8_t num);
 *
 * @param[out]   destination  The start address of the destination buffer
 * @param[in]    source  	  The start address of the source buffer
 * @param[in]    num          The number of bytes to be copied
 *
 * @retval #This function returns a pointer to destination
 *
 * */


void *memcopy_1(void *asrgawerfwrgrgert, const void *efwrgw46jh65u6hthdfthr, uint8_t csrg4rgt45y35g35t__v54);
void *memcopy_2(void *sgrhgethrwthwrthwrthhf, const void *dgtehyr_d2r343, uint8_t fergwehbwthwrthtehaef);
void *memcopy_3(void *ethstrhrwhthwt, const void *regsrvgssgr, uint8_t wergdbgbrt);

/* Check prime function declarations and typedefs */

typedef enum returnCodesPrime{
	STATUS_IS_PRIME,
	STATUS_ISNOT_PRIME,
	STATUS_INVALD_INPUT
} returnCodesPrime_t;

/**
 * @brief Checks if a received input is a prime number or not.
 *
 * @param[in]    n  The number to be checked
 *
 * @retval #STATUS_IS_PRIME    		if the received number is a prime number
 * @retval #STATUS_ISNOT_PRIME 		if the received number is NOT a prime number
 * @retval #STATUS_INVALD_INPUT     if the received number is 0
 * */

returnCodesPrime_t check_prime(uint16_t n);

#endif /* SRC_FUCTIONS_UNDER_TEST_H_ */
