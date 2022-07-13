/*
 * Platform_Types.h
 *
 *  Created on: Mar 21, 2022
 *      Author: tokam
 */

#ifndef PLATFORM_TYPES_H_
#define PLATFORM_TYPES_H_

#define CPU_TYPE	 	CPU_TYPES_32
#define CPU_BIT_ORDER	MSB_FIRST
#define CPU_BYTE_ORDER	HIGH_BYTE_ORDER

typedef unsigned char  		boolean;
typedef signed char    		sint8;
typedef unsigned char  		uint8;
typedef short          		sint16;
typedef unsigned short 		uint16;
typedef int            		sint32;
typedef unsigned       		uint32;
typedef long long      		sint64;
typedef unsigned long long 	uint64;

typedef volatile sint8 vint8;
typedef volatile uint8 vuint8;

typedef volatile sint16 vint16;
typedef volatile uint16 vuint16;

typedef volatile sint32 vint32;
typedef volatile uint32 vuint32;

typedef volatile sint64 vint64;
typedef volatile uint64 vuint64;

#endif /* PLATFORM_TYPES_H_ */
