run:
	@zola serve

build:
	zola build

publish: build
	cd public
	git add --all
	git commit -m "Publishing"
	git push origin gh-pages --force

setup:
	rm -rf public/
	git worktree add public gh-pages

