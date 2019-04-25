#include "converter.h"
#include <hls_stream.h>

using namespace std;

int main() {
	hls::stream<float> from_last("input");
	from_last << 4.5f;
	from_last << 0.214309647679329;

	hls::stream<padded_data> to_next("output");
	converter(from_last, to_next);
	converter(from_last, to_next);

	padded_data tmp;
	to_next >> tmp;
	cout << tmp.data << " ";
	to_next >> tmp;
	cout << tmp.data << " ";
}
