run:
	@zola serve --drafts

build:
	zola build

deploy: build
	rm -rf dist/* && \
	cp -r public/* dist/ && \
	cd dist && \
	git add --all && \
	git commit -m "Deploy to gh-pages" && \
	git push origin gh-pages --force

setup:
	rm -rf public/ dist/
	git worktree add dist gh-pages

pdf:
	cd documents && \
	pandoc resume.md -o resume.pdf && \
	pandoc curriculo.md -o curriculo.pdf && \
	cp *.pdf ../static
