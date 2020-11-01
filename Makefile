VERSION=540.1.linux3

CC := clang
CFLAGS := -g3 -Wall -fblocks -I$(PWD)/BlocksRunTime -I$(PWD)/include -DDEBUG_BUILD=0 -D_FILE_OFFSET_BITS=64 -D LINUX=1 -D BSD=1 -D VERSION=\"$(VERSION)\"
LDFLAGS := -Wl,--build-id -L$(PWD)/BlocksRunTime
SUBDIRS := BlocksRunTime newfs_hfs.tproj fsck_hfs.tproj

all clean:
	for d in $(SUBDIRS); do $(MAKE) -C $$d -f Makefile.lnx $@; done

dist: clean
	-mkdir diskdev_cmds-$(VERSION)
	cp -a $(SUBDIRS) Makefile include diskdev_cmds-$(VERSION)
	tar zcf diskdev_cmds-$(VERSION).tar.gz diskdev_cmds-$(VERSION) 

export CC CFLAGS LDFLAGS
