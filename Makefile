main.bin: main.c
	gcc -Wl,-Bsymbolic,--export-dynamic-symbol=y,--export-dynamic-symbol=p -s -O3 -o build/$@ $<
	
main.s.bin: main.bin
	strip -o build/$@ build/$<

main.symbol: main.bin
	readelf --symbol build/$<
main.s.symbol: main.s.bin
	readelf --symbol build/$<

main.qcc.bin: main.c
	qcc -Wl,-Bsymbolic -Wl,--dynamic-list=./dynsym.syms -s -O3 -o build/$@ $<

qcc.s.bin: main.qcc.bin
	x86_64-pc-nto-qnx7.1.0-strip -o build/$@ build/$<

qcc.symbol: main.qcc.bin
	x86_64-pc-nto-qnx7.1.0-readelf --symbol build/$<

qcc.s.symbol: qcc.s.bin
	x86_64-pc-nto-qnx7.1.0-readelf --symbol build/$<
