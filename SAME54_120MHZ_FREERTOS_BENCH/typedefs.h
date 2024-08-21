/*
 * typedefs.h
 *
 * Created: 25/7/2018 2:24:16 μμ
 *  Author: NP
 */ 


#ifndef _TYPEDEFS_H_
#define _TYPEDEFS_H_

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

#include <hpl_gpio.h>

#define PORTA                   PORT->Group[0]
#define PORTB                   PORT->Group[1]
#define PORTC                   PORT->Group[2]

//normal
typedef int8_t                  S8 ;  //!< 8-bit signed integer.
typedef uint8_t                 U8 ;  //!< 8-bit unsigned integer.
typedef int16_t                 S16;  //!< 16-bit signed integer.
typedef uint16_t                U16;  //!< 16-bit unsigned integer.
typedef int32_t                 S32;  //!< 32-bit signed integer.
typedef uint32_t                U32;  //!< 32-bit unsigned integer.
typedef int64_t                 S64;  //!< 64-bit signed integer.
typedef uint64_t                U64;  //!< 64-bit unsigned integer.
typedef float                    F32;  //!< 32-bit floating-point number.
typedef double                  F64;  //!< 64-bit floating-point number.

//volatiles
typedef volatile int8_t         VS8 ;  //!< 8-bit signed integer.
typedef volatile uint8_t        VU8 ;  //!< 8-bit unsigned integer.
typedef volatile int16_t        VS16;  //!< 16-bit signed integer.
typedef volatile uint16_t       VU16;  //!< 16-bit unsigned integer.
typedef volatile int32_t        VS32;  //!< 32-bit signed integer.
typedef volatile uint32_t       VU32;  //!< 32-bit unsigned integer.
typedef volatile int64_t        VS64;  //!< 64-bit signed integer.
typedef volatile uint64_t       VU64;  //!< 64-bit unsigned integer.
typedef volatile float           VF32;  //!< 32-bit floating-point number.
typedef volatile double         VF64;  //!< 64-bit floating-point number.

//const
typedef const int8_t                  CS8 ;  //!< 8-bit signed integer.
typedef const uint8_t                 CU8 ;  //!< 8-bit unsigned integer.
typedef const int16_t                 CS16;  //!< 16-bit signed integer.
typedef const uint16_t                CU16;  //!< 16-bit unsigned integer.
typedef const int32_t                 CS32;  //!< 32-bit signed integer.
typedef const uint32_t                CU32;  //!< 32-bit unsigned integer.
typedef const int64_t                 CS64;  //!< 64-bit signed integer.
typedef const uint64_t                CU64;  //!< 64-bit unsigned integer.
typedef const float                    CF32;  //!< 32-bit floating-point number.
typedef const double                  CF64;  //!< 64-bit floating-point number.

#define VPC(x) ((void * const) (x))
#define CVP(x)	((const void *) (x))

#define U8P(x)	((U8 *)(x))
#define CU8P(x) ((const U8 *)(x))
#define CCP(x) ((const char *)(x))
#define CP(x)	((char *)(x))

#define U32P(x)	((U32 *)(x))
#define CU32P(x) ((const U32 *)(x))

//externs
#define eS8	(extern S8)
#define eU8	(extern U8)
#define eS16	(extern S16)
#define eU16	(extern U16)
#define eS32	(extern S32)
#define eU32	(extern U32)
#define eS64	(extern S64)
#define eU64	(extern U64)
#define eF32	(extern F32)
#define eF64	(extern F64)

//extern volatile
#define eVS8	(extern VS8)
#define eVU8	(extern VU8)
#define eVS16	(extern VS16)
#define eVU16	(extern VU16)
#define eVS32	(extern VS32)
#define eVU32	(extern VU32)
#define eVS64	(extern VS64)
#define eVU64	(extern VU64)
#define eVF32	(extern VF32)
#define eVF64	(extern VF64)

//externs const
#define eCS8	(extern CS8)
#define eCU8	(extern CU8)
#define eCS16	(extern CS16)
#define eCU16	(extern CU16)
#define eCS32	(extern CS32)
#define eCU32	(extern CU32)
#define eCS64	(extern CS64)
#define eCU64	(extern CU64)
#define eCF32	(extern CF32)
#define eCF64	(extern CF64)

#endif // _TYPEDEFS_H_
