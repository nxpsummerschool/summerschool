#include <stdio.h>
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
 
void show_int(int x)
{
     show_bytes((byte_pointer) &x, sizeof(int));
}

 
void show_pointer(void *x)
{
     show_bytes((byte_pointer) &x, sizeof(void *));
}
 
/* Driver program to test above functions */
int main()
{
    int i = 10;
    int i2 = 0x0000000A;
    int i3 =-1;
    show_int(i);
    show_int(i2);
    show_int(i3); 
    int *p = &i;
    show_pointer(p);
    return 0;
}