all:	hello.bin checkers.bin udg.bin chapter2.bin loadimg.bin

hello.bin:	hello.z80
		pasmo --tapbas hello.z80 hello.bin

checkers.bin:	checkers.z80
		pasmo --tapbas checkers.z80 checkers.bin

udg.bin:	udg.z80
		pasmo --tapbas udg.z80 udg.bin

chapter2.bin:	chapter2.z80
		pasmo --tapbas chapter2.z80 chapter2.bin

loadimg.bin:	loadimg.z80
		pasmo --tapbas loadimg.z80 loadimg.bin

README.html:	README.md
		pandoc -s -o README.html README.md

.PHONY:	clean
clean:
		@rm -f *.bin README.html
