#include <stdint.h>

/**
 * my_operation is a function for operating on two arrays of unsigned data
 *
 * This function will add element by element for len elements
 * The sum of each element cannot overflow
 * If the sum overflows the result will be a subtraction between the
 * highest number and lowest one
 * After the 5th element all results will be incremented by one
 * Element is defined by the type of data uint32_t
 *
 * @param[in]   a     Pointer to first array of values
 * @param[in]   b     Pointer to second array of values
 * @param[out]  sum   Pointer to result
 *
 * @return sum of the two parameters
 */
void my_operation(uint32_t* a, uint32_t* b, uint32_t* sum, uint32_t len) 
