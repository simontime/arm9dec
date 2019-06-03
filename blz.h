#include "common.h"

typedef struct footer
{
	u24 total_size;
	u8 hdr_size;
	u32 ext_size;
} footer;

u8 *decompress_blz_buffer(u8 *in, u32 length_in, u32 *length_out);