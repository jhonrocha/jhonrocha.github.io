run:
	@zola serve

build:
	zola build

publish:
	git subtree push --prefix public origin gh-pages

