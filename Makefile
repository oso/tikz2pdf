NAME = tikz2pdf
MANFILE = tikz2pdf.1

INSTALL = install
PREFIX ?= $(DESTDIR)/usr
BINDIR ?= $(PREFIX)/bin
DATADIR ?= $(PREFIX)/share
MANDIR ?= $(DATADIR)/man/man1

all: $(NAME)

install: all
	$(INSTALL) -d -m 755 $(BINDIR)
	$(INSTALL) $(NAME) $(BINDIR)
	$(INSTALL) -d -m 755 $(MANDIR)
	$(INSTALL) -m 644 $(MANFILE) $(MANDIR)
