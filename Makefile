main.bin: main.c
	gcc -Wl,-Bsymbolic,--export-dynamic-symbol=y -Wl,-Bsymbolic,--export-dynamic-symbol=p -s -O3 -o build/$@ $<
	
main.s.bin: main.bin
	strip -o build/$@ build/$<

main.symbol: main.bin
	readelf --symbol build/$<
main.s.symbol: main.s.bin
	readelf --symbol build/$<