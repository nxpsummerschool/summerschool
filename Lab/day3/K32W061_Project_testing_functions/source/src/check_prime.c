
#include <src/FUTs.h>

returnCodesPrime_t check_prime(uint16_t n)
{
	uint16_t i=2;

	if(0 == n)
		return STATUS_INVALD_INPUT;

    while(i <= n / 2)
    {
         if(n % i == 0)
             return STATUS_ISNOT_PRIME;
         else
             i++;
    }
    return STATUS_IS_PRIME;
}


