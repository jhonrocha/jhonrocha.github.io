run:
	@zola serve

build:
	zola build

deploy: build
	cd public && \
	git add --all && \
	git commit -m "Deploy to gh-pages" && \
	git push origin gh-pages

setup:
	rm -rf public/
	git worktree add public gh-pages

