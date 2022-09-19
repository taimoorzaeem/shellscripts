DESTDIR="/usr/bin"

changemod:
	chmod u+x src/replspace

install:
	install src/replspace $(DESTDIR)

uninstall:
	rm -f $(DESTDIR)/replspace
