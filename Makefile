# repomenu - menu from therepoclub
# See LICENSE file for copyright and license details.

include config.mk

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f repomenu_snapper $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(LOCALPREFIX)/bin
	cp -f snap* $(DESTDIR)$(LOCALPREFIX)/bin
	mkdir -p $(DESTDIR)$(SYSTEMD)/system
	cp -f auto-snapshot* $(DESTDIR)$(SYSTEMD)/system


uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/repomenu_snapper
	rm -rf $(DESTDIR)$(LOCALPREFIX)/bin/snap*
	rm -rf $(DESTDIR)$(SYSTEMD)/system/auto-snapshot*

.PHONY: all install uninstall
