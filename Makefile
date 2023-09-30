#COLORS
GREEN  := $(shell tput -Txterm setaf 2)
WHITE  := $(shell tput -Txterm setaf 7)
YELLOW := $(shell tput -Txterm setaf 3)
RESET  := $(shell tput -Txterm sgr0)

# Add the following 'help' target to your Makefile
# And add help text after each target name starting with '\#\#'
# A category can be added with @category
HELP_FUN = \
    %Targets; \
    while(<>) { push @{$$help{$$2 // 'options'}}, [$$1, $$3] if /^([a-zA-Z\-]+)\s*:.*\#\#(?:@([a-zA-Z\-]+))?\s(.*)$$/ }; \
    print "\n${WHITE}usage:\n"; \
	print "  ${YELLOW}make <target>                  ${GREEN} Replace the <target> with one of below operations.\n\n"; \
    for (sort keys %help) { \
    print "${WHITE}$$_:${RESET}\n"; \
    for (@{$$help{$$_}}) { \
    $$sep = " " x (32 - length $$_->[0]); \
    print "  ${YELLOW}$$_->[0]${RESET}$$sep${GREEN}$$_->[1]${RESET}\n"; \
    }; \
    print "\n"; }

help: ##@target Show target help options.
	@perl -e '$(HELP_FUN)' $(MAKEFILE_LIST)

start-app-db: FORCE ##@target Starts the app and db with sample data dump
	docker compose up -d ;\
	docker compose exec db /bin/bash ./opt/upload.sh

clear: FORCE ##@target Clears the "__pycache__" & ".pytest_cache". Will be required to run twice.
	@find . -name "__pycache__" -exec rm -rf {} \;
	@find . -name ".pytest_cache" -exec rm -rf {} \;

FORCE: 