#!/usr/bin/make -f
SYMLINK_EXT ?= .symlink
COPY_EXT ?= .copy
HOME_DIR ?= ${HOME}

install::
	for file in **/*${SYMLINK_EXT}; do \
		filename=${HOME_DIR}/.`basename $$file ${SYMLINK_EXT}`; \
		if [ -L $$filename ]; then \
			ln -snf $$PWD/$$file  $$filename ; \
		else \
			ln -sni $$PWD/$$file  $$filename ; \
		fi \
	done

copy::
	for file in **/*${COPY_EXT}; do \
		cp -ri $$PWD/$$file ${HOME_DIR}/.`basename $$file ${COPY_EXT}`; \
	done

.PHONY : install
.DEFAULT : install
.SILENT : install copy
