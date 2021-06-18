run:
	@zola serve

build:
	zola build

deploy: build
	cd public && \
	git add --all && \
	git commit -m "Publishing" && \
	git push origin gh-pages

setup:
	rm -rf public/
	git worktree add public gh-pages

