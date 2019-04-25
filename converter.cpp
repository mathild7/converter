#include <hls_stream.h>
#include <ap_int.h>
#include "converter.h"

using namespace hls;

void converter(
	stream<float> &in,
	stream<padded_data> &out
)
{
#pragma HLS PIPELINE
#pragma HLS INTERFACE axis register both port=out
#pragma HLS DATA_PACK variable=out
#pragma HLS INTERFACE axis register both port=in
#pragma HLS INTERFACE ap_ctrl_none port=return

	//Read in the float
	float tmp;
	in >> tmp;

	//Convert to 24 bit signed int
	ap_int<24> converted = ap_int<24>(tmp*8388607.0f); //Scale to +- MAX_INT24

	//Fill into padded_data structure
	static padded_data output = {0, 0};

	output.data = converted;

	out << output;
}
