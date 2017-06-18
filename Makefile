all:	hello.bin checkers.bin

hello.bin:	hello.asm
		pasmo --tapbas hello.asm hello.bin

checkers.bin:	checkers.asm
		pasmo --tapbas checkers.asm checkers.bin

.PHONY:	clean
clean:
		@rm -f *.bin
