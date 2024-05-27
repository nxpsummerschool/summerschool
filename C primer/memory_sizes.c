#include <stdio.h>
#include <stdint.h>
int global; /* Uninitialized variable stored in bss*/
 
int main(void)
{
    uint8_t test[256]={0};
    for (int i=0;i<256;i++)
        test[i]=i;
    printf("%i", test['a']);
    return 0;

}