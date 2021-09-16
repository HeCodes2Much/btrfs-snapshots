# repomenu - menu from therepoclub
# See LICENSE file for copyright and license details.

include config.mk

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f repomenu_snapper $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(LOCALPREFIX)/bin
	cp -f snap* $(DESTDIR)$(LOCALPREFIX)/bin


uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/repomenu_snapper
	rm -rf $(DESTDIR)$(LOCALPREFIX)/bin/snap*

.PHONY: all install uninstall
