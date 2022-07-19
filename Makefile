# btrfs-snapshots - from therepoclub
# See LICENSE file for copyright and license details.

include config.mk

install: all
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -f snap* $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(PREFIXOPT)/btrfs-snapshots
	cp -f opt/btrfs-snapshots/preferences.json $(DESTDIR)$(PREFIXOPT)/btrfs-snapshots
	mkdir -p $(DESTDIR)$(SYSTEMD)/system
	cp -f auto-snapshot* $(DESTDIR)$(SYSTEMD)/system
	mkdir -p $(DESTDIR)$(PACMAND)/hooks
	cp -f *make_snapshot.hook* $(DESTDIR)$(PACMAND)/hooks


uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/snap*
	rm -rf $(DESTDIR)$(PREFIXOPT)/btrfs-snapshots/
	rm -rf $(DESTDIR)$(SYSTEMD)/system/auto-snapshot*
	rm -rf $(DESTDIR)$(PACMAND)/hooks/*make_snapshot.hook*

.PHONY: all install uninstall
