# This var sets which cloud you're generating an env file for
CLOUD ?= azure

# These are the defaults for Azure
AZURE_TEMPLATE_FILE = azure.env.template
AZURE_PREFIX = AZURE_ENV_

# Determine which cloud we're in
ifeq ($(CLOUD),azure)
TEMPLATE_FILE = $(AZURE_TEMPLATE_FILE)
ENV_PREFIX = $(AZURE_PREFIX)
endif

all: .envrc

.envrc:
	dump-env --template=$(TEMPLATE_FILE) --prefix='$(ENV_PREFIX)' > .envrc
	sed -i -e 's/^/export /' .envrc
	direnv allow .envrc

.PHONY: install
install:
	./install-env-tools.bash
