#include "typedefs.h"
#include "sam.h"

static inline U32 get_dwt_cycles_u32( void )
{ 
    U32 t = 0;
   
    t = DWT->CYCCNT;

    return t;
}