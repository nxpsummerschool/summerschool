#include <stdio.h>
#include <string.h>
#include <stdint.h>
typedef unsigned char *byte_pointer;
 
/*show bytes takes byte pointer as an argument
  and prints memory contents from byte_pointer
  to byte_pointer + len */
void show_bytes(byte_pointer start, int len)
{
     int i;
     for (i = 0; i < len; i++)
           printf(" %.2x", start[i]);
     printf("\n");
}
 
void show_char(char* x, int len)
{
     show_bytes((byte_pointer) x, len);
}

/* Driver program to test above functions */
int main()
{
     char* p = "Hello";
     //p[1] = 'M'; // Undefined behavior
     char a[] = "Hello";
     a[1] = 'M'; // OK: a is not a string literal

     show_char(p, strlen(p));
     show_char(a, strlen(a));

     uint8_t int_array[] = {0x48, 0x65, 0x6c, 0x6c, 0x6f, 0x00};
     printf("%s",int_array);
    return 0;
}