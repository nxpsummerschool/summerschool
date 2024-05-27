#include <stdio.h>

int main () {

   int  var = 20;   /* actual variable declaration */
   int  *pVar;        /* pointer variable declaration */

   pVar = &var;  /* store address of var in pointer variable*/

   char c=0x20;
   char *pC = &c;
   *pC++;

   // what does this return?
   printf("%d", pC)

   // if pC is 0x400 what is pC+1
   // if pVar is 0x800 what is pVar+1

   int myNumbers[4] = {25, 50, 75, 100};
   
   printf("%p\n", myNumbers);
   printf("%p\n", &myNumbers[0]);
   printf("%p\n", &myNumbers[1]);
   printf("%p\n", &(myNumbers+1));
   printf("%p\n", &(((char*)myNumbers)+1));

   return 0;
}