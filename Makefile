# repomenu - menu from therepoclub
# See LICENSE file for copyright and license details.

include config.mk

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f repomenue_snapshots $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(LOCALPREFIX)/bin
	cp -f snap* $(DESTDIR)$(LOCALPREFIX)/bin
	mkdir -p $(DESTDIR)$(SYSTEMD)/system
	cp -f auto-snapshot* $(DESTDIR)$(SYSTEMD)/system
	mkdir -p $(DESTDIR)$(PACMAND)/hooks
	cp -f *make_snapshot* $(DESTDIR)$(PACMAND)/hooks


uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/repomenue_snapshots
	rm -rf $(DESTDIR)$(LOCALPREFIX)/bin/snap*
	rm -rf $(DESTDIR)$(SYSTEMD)/system/auto-snapshot*
	rm -rf $(DESTDIR)$(PACMAND)/hooks/*make_snapshot*

.PHONY: all install uninstall
