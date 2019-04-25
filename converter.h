#ifndef CONVERTER_H
#define CONVERTER_H 1

#include <hls_stream.h>
#include <ap_int.h>

struct padded_data {
	ap_uint<8> 	padding;
	ap_int<24>	data;
};


void converter(
	hls::stream<float> &in,
	hls::stream<padded_data> &out
);

#endif
