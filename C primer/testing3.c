#include <stdint.h>

/**
 * my_sum is a function for summing two arrays of unsigned data
 *
 * This function will add element by element for len elements
 * The sum of each element can overflow
 * Element is defined by the type of data uint8_t
 *
 * @param[in]   a     Pointer to first array of values
 * @param[in]   b     Pointer to second array of values
 * @param[in]   len   Length of bytes that we want to sum
 * @param[out]  sum   Pointer to result
 *
 * @return sum of the two parameters
 */
void my_sum(uint8_t* a, uint8_t* b, uint8_t* sum, uint8_t len) 
{
    for (uint8_t i=0; i<=len;i++)
    {
      *(sum+i)= *(a+i) + *(b+i);
    }
}