//Copy block of memory
//Copies the values of num bytes from the location pointed to by source directly to the memory
//block pointed to by destination.
//
//The underlying type of the objects pointed to by both the source and destination pointers are
//irrelevant for this function; The result is a binary copy of the data.
//
//The function does not check for any terminating null character in source - it always copies
//exactly num bytes.

void * memcpy ( void * destination, const void * source, size_t num );

//baremetal coding, ARM
void test_memcpy()
{
	uint8_t a[5];
	uint32_t b[5] = {0xaa,0x12,0x34,0x45, 0xff};
	memcpy(a,b,5);
}

void * memcpy ( void * destination, const void * source, size_t num )
{



}

//Set a bit to 1 in the register at address addr
void set_register(uint32_t addr, uint8_t pos);