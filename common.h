#pragma once

#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <stdio.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

typedef struct u24
{
	u8 n[3];
} u24;

static u32 as_u32(u24 n)
{
	return (n.n[2] << 16) | (n.n[1] << 8) | n.n[0];
}