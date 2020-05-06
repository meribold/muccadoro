# bthandler
# See LICENSE file for copyright and license details.

VERSION = 1.1

# paths
PREFIX = ~/.local/bin

SRC = muccadoro
OBJ = $(SRC:.c=.o)

install:
	mkdir -p $(DESTDIR)$(PREFIX)
	cp -f muccadoro $(DESTDIR)$(PREFIX)
	chmod 755 $(DESTDIR)$(PREFIX)/muccadoro

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/muccadoro

.PHONY: install uninstall
