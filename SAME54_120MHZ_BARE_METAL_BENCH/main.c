#include "driver_init.h"
#include <stdio.h>
#include "coremark.h"

int main(void)
{
#ifndef SIMULATOR
        system_init();
#else
#include <__debug_stdio.h>
#include <stdlib.h>
#endif
        printf("Program Start! \r\n");   

        coremain();

	while (1) {
           __asm("nop");
	}
}
