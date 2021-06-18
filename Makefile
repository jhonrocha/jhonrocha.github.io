run:
	@zola serve

build:
	zola build

publish: build
	git subtree push --prefix public origin gh-pages

