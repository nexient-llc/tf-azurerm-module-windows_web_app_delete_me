mode ?= auto

.PHONY: release
release:
	sbot update version
	sbot release version -m $(mode)
	sbot push version