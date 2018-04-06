ifneq ($(wildcard ./node_modules),)
	include ./node_modules/makefile-help/Makefile
endif

# Run commands with the node debugger. (default: false)
DEBUG ?= false

ifeq ($(DEBUG),false)
	node = node
else
	node = node debug
endif

.PHONY: start install build-application build-presentation publish help

all: build-application build-presentation publish

install:
	bower i

start:
	python -m SimpleHTTPServer

dev-app:
	coffee -wc behavior/*.coffee

stop-dev-app:
	ps -eo pid,command | grep coffee | cut -d ' ' -f1 | xargs kill -9

dev-style:
	compass watch presentation

stop-dev-style:
	ps -eo pid,command | grep compass | cut -d ' ' -f1 | xargs kill -9

publish:
	surge . companion.money

build-application:
	coffee -c behavior/*.coffee

build-presentation:
	compass compile presentation

