#!/usr/bin/make -f
SYMLINK_EXT ?= .symlink
COPY_EXT ?= .copy
HOME_DIR ?= ${HOME}

install:: copy
	for file in **/*${SYMLINK_EXT}; do \
		ln -sni $$PWD/$$file ${HOME_DIR}/.$${filename}`basename $$file ${SYMLINK_EXT}`; \
	done

copy::
	for file in **/*${COPY_EXT}; do \
		cp -ri $$PWD/$$file ${HOME_DIR}/.$${filename}`basename $$file ${COPY_EXT}`; \
	done

.PHONY : install
.DEFAULT : install
.SILENT : install copy
