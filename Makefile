# This file implements the GNOME Build API:
# http://people.gnome.org/~walters/docs/build-api.txt

FIRMWAREDIR = /lib/firmware

all:

install:
	mkdir -p $(DESTDIR)$(FIRMWAREDIR)
	cp -r * $(DESTDIR)$(FIRMWAREDIR)
	find $(DESTDIR)$(FIRMWAREDIR) \( -name 'WHENCE' -or -name 'LICENSE.*' -or \
		-name 'LICENCE.*' -or -name 'Makefile' -or -name 'Android.mk' \) \
		-exec rm -- {} \;
