#ifndef STD_TYPES_H_
#define STD_TYPES_H_

#include "stdint.h"
/* Boolean Data Type */
typedef unsigned char bool;

/* Boolean Values */
#ifndef FALSE
#define FALSE       (0u)
#endif

#ifndef TRUE
#define TRUE        (1u)
#endif

typedef unsigned char         uint8;          /*           0 .. 255             */
typedef signed char           sint8;          /*        -128 .. +127            */
typedef unsigned short        uint16;         /*           0 .. 65535           */
typedef signed short          sint16;         /*      -32768 .. +32767          */
typedef unsigned long         uint32;         /*           0 .. 4294967295      */
typedef signed long           sint32;         /* -2147483648 .. +2147483647     */
typedef unsigned long long    uint64;         /*       0..18446744073709551615  */
typedef signed long long      sint64;
typedef float                 float32;
typedef double                float64;

#define NULL ((void *)0)



/*
 * Describes the standard return Type Definitions used in the project 
 */
typedef uint8_t Std_ReturnType;

#define STD_HIGH	0x01u		/* Standard HIGH */
#define STD_LOW		0x00u		/* Stanard  low */

#define STD_ACTIVE	0x01u		/* Logical State Active*/
#define STD_IDLE	0x00u		/* Logical State Idle*/

#define STD_ON		0x01u		/* Standard On*/
#define STD_OFF		0x00u		/* Standard Off*/

#define E_OK		((Std_ReturnType)0x00u)		/* Function Return Ok */
#define E_NOT_OK	((Std_ReturnType)0x01u)		/* Function Return NOT Ok */

#define E_NOK			1U

enum {
Pin0,Pin1,Pin2,Pin3,Pin4,Pin5,Pin6,Pin7
};

#endif /* STD_TYPE_H_ */
