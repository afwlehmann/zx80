all:	hello.bin checkers.bin udg.bin

hello.bin:	hello.z80
		pasmo --tapbas hello.z80 hello.bin

checkers.bin:	checkers.z80
		pasmo --tapbas checkers.z80 checkers.bin

udg.bin:	udg.z80
		pasmo --tapbas udg.z80 udg.bin

README.html:	README.md
		pandoc -s -o README.html README.md

.PHONY:	clean
clean:
		@rm -f *.bin README.html
