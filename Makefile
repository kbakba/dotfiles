#!/usr/bin/make -f
SYMLINK_EXT ?= .symlink
HOME_DIR ?= ${HOME}

install::
	for file in **/*${SYMLINK_EXT}; do \
		ln -sni $$PWD/$$file ${HOME_DIR}/.$${filename}`basename $$file ${SYMLINK_EXT}`; \
	done

.PHONY : install
.DEFAULT : install
.SILENT : install
