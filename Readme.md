Example code of how to export a symbol in section .dynsym, so that this symbol won't be stripped

Run the example:
```shell
make main.s.symbol
```

Dump address of global symbol in GDB
```
print &y
print &p
```