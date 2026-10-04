.PHONY = all wii gc wii-clean gc-clean wii-run gc-run

all: xenon

run: wii-run

clean: wii-clean gc-clean xenon-clean

wii:
	$(MAKE) -f Makefile.wii

wii-clean:
	$(MAKE) -f Makefile.wii clean

wii-run: wii
	$(MAKE) -f Makefile.wii run

gc:
	$(MAKE) -f Makefile.gc

gc-clean:
	$(MAKE) -f Makefile.gc clean

gc-run: gc
	$(MAKE) -f Makefile.gc run

xenon:
	$(MAKE) -f Makefile.xenon

xenon-clean:
	$(MAKE) -f Makefile.xenon clean

