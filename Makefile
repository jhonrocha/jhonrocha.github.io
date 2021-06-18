run:
	@zola serve

build:
	zola build

deploy: build
	rm -rf dist/* && \
	cp -r public/* dist/ && \
	cd dist && \
	git add --all && \
	git commit -m "Deploy to gh-pages" && \
	git push origin gh-pages

setup:
	rm -rf public/ dist/
	git worktree add dist gh-pages

