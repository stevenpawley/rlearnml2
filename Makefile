MODULE_TOPDIR = ../..

PGM = r.learn.ml

SUBDIRS = rlearnlibs \
	  r.learn.train \
	  r.learn.predict \
	  r.learn.crossval
	  
include $(MODULE_TOPDIR)/include/Make/Dir.make

default: parsubdirs htmldir

install: installsubdirs
	$(INSTALL_DATA) $(PGM).html $(INST_DIR)/docs/html/
