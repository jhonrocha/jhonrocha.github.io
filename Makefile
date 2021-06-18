run:
	@zola serve

build:
	zola build

publish:
	git subtree push --force --prefix public origin gh-pages
	git push origin `git subtree split --prefix public master`:gh-pages --force

