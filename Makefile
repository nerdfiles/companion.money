ifneq ($(wildcard ./node_modules),)
	include ./node_modules/makefile-help/Makefile
endif

DEBUG ?= false

ifeq ($(DEBUG),false)
	node = node
else
	node = node debug
endif

.PHONY: start install serve dev-app stop-dev-app dev-style stop-dev-style publish build-app build-style

# * all
all: build-app build-style publish

# * start
start:
	cat Makefile | grep -v "[^\"]?:" | grep ":" | cut -d ':' -f1 | percol | xargs make

# * install
install:
	bower i

# * serve
serve:
	python -m SimpleHTTPServer

# * dev-app
dev-app:
	coffee -wc behavior/*.coffee

# * stop-dev-app
stop-dev-app:
	ps -eo pid,command | grep coffee | cut -d ' ' -f1 | xargs kill -9

# * dev-style
dev-style:
	compass watch presentation

# * stop-dev-style
stop-dev-style:
	ps -eo pid,command | grep compass | cut -d ' ' -f1 | xargs kill -9

# * publish
publish:
	surge . companion.money

# * build-app
build-app:
	coffee -c behavior/*.coffee

# * build-style
build-style:
	compass compile presentation

cleanup:
	git add . && git commit -m 'Cleanup.' && git push -u
