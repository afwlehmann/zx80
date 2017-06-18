all:	hello.bin checkers.bin

hello.bin:	hello.z80
		pasmo --tapbas hello.z80 hello.bin

checkers.bin:	checkers.z80
		pasmo --tapbas checkers.z80 checkers.bin

.PHONY:	clean
clean:
		@rm -f *.bin
