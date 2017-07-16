SOURCES := ${wildcard *.z80}
OBJECTS := ${SOURCES:.z80=.bin}

.PHONY:		all clean

.SUFFIXES:	.z80 .bin

all:		main

main:		$(OBJECTS)

.z80.bin:
	pasmo --tapbas $< $@

README.html:	README.md
		pandoc -s -o README.html README.md

clean:
		@rm -f *.bin README.html
