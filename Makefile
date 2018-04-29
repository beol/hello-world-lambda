build: dep test lint
	npm run build

dep:
	npm i

test: dep
	npm run test

lint: dep
	npm run lint

clean:
	rm -rf node_modules dist

.PHONY: build dep test lint clean
