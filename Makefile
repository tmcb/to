.PHONY: all install
all:
	@echo "usage: make install PREFIX=<prefix>" 1>&2
	@exit 1

install: $(PREFIX)/bin/to $(PREFIX)/etc/bash_completion.d/to.sh

$(PREFIX)/bin/to: to
	mkdir -p $(PREFIX)/bin
	install $? $@

$(PREFIX)/etc/bash_completion.d/to.sh: bash_completion/to.sh
	mkdir -p $(PREFIX)/etc/bash_completion.d
	install $? $@
