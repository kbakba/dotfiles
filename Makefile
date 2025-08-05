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

	for file in `find config -type f` ; do \
		filename=`basename $$file`; \
		dir=${HOME_DIR}/.`dirname $$file`; \
		test -d $$dir || mkdir -p $$dir; \
		ln -snf $$PWD/$$file  $$dir/$$filename; \
	done

copy::
	for file in **/*${COPY_EXT}; do \
		cp -ri $$PWD/$$file ${HOME_DIR}/.`basename $$file ${COPY_EXT}`; \
	done

brew::
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	brew bundle
	brew bundle --file Brewfile_opt

.PHONY : install
.DEFAULT : install
.SILENT : install copy
