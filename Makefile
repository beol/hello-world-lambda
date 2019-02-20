all: build

build: dep lint

dep: node_modules

node_modules: package.json package-lock.json
	npm install

distclean:
	rm -rf node_modules

prettier: dep
	npm run prettier

lint: prettier
	npm run lint

.PHONY: all build dep distclean prettier lint