ifneq ($(wildcard ./node_modules),)
	include ./node_modules/makefile-help/Makefile
endif

DEBUG ?= false

ifeq ($(DEBUG),false)
	node = node
else
	node = node debug
endif

.PHONY: start install cname serve dev-app stop-dev-app dev-style stop-dev-style publish build-app build-style cleanup cname

all: build-app build-style deploy

start:
	cat Makefile | grep -v "[^\"]?:" | grep "[^%^@]:" | cut -d ':' -f1 | percol | xargs make

install:
	bower i

serve:
	python -m SimpleHTTPServer

dev-app:
	coffee -wc ./behavior

dev-style:
	compass watch presentation

stop-dev-app:
	ps -eo pid,command | grep coffee | cut -d ' ' -f1 | xargs kill -9

stop-dev-style:
	ps -eo pid,command | grep compass | cut -d ' ' -f1 | xargs kill -9

stop-all-dev:
	ps -eo pid,command | grep coffee | cut -d ' ' -f1 | xargs kill -9
	ps -eo pid,command | grep compass | cut -d ' ' -f1 | xargs kill -9

build-app:
	coffee -c ./behavior

build-style:
	compass compile presentation

cleanup:
	git add . && git commit -m '#cleanup'

publish:
	surge . companion.money

deploy:
	git add . && git commit -m '#deploy' && git push -u
	surge . companion.money

cname:
	@echo $(filter-out $@,$(MAKECMDGOALS)) > CNAME

%:
	@:


