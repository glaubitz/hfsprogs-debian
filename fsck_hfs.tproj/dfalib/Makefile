Project = dfalib
ProductType = staticlib
Install_Dir = /scratch

HFILES = hfs_endian.h BTree.h BTreePrivate.h BTreeScanner.h CaseFolding.h\
		 CheckHFS.h Scavenger.h SRuntime.h DecompDataEnums.h DecompData.h  

CFILES = hfs_endian.c BlockCache.c\
         BTree.c BTreeAllocate.c BTreeMiscOps.c \
         BTreeNodeOps.c BTreeScanner.c BTreeTreeOps.c\
         CatalogCheck.c HardLinkCheck.c dirhardlink.c \
         SBTree.c SControl.c SVerify1.c SVerify2.c\
         SRepair.c SRebuildBTree.c\
         SUtils.c SKeyCompare.c SDevice.c SExtents.c SAllocate.c\
         SCatalog.c SStubs.c VolumeBitmapCheck.c uuid.c
         
Extra_CC_Flags = -Wall -Werror -DBSD=1 -DDEBUG_BUILD=0 -DCONFIG_HFS_TRIM=$(CONFIG_HFS_TRIM) \
	-Wno-four-char-constants -fpascal-strings

include $(MAKEFILEPATH)/CoreOS/ReleaseControl/BSDCommon.make
