-:
	@type -P pandoc >/tmp/miniscript-template.log && pandoc --preserve-tabs --ascii --from=mediawiki --to=html README.mediawiki | sed 's/__NOTOC__//' > index.html
	@type -P pandoc >/tmp/miniscript-template.log && pandoc --preserve-tabs --ascii --from=mediawiki --to=markdown README.mediawiki | sed 's/__NOTOC__//' > README.md
	@type -P pandoc >/tmp/miniscript.log && pandoc -s README.mediawiki -o index.html 2>/dev/null || \
		type -P docker && docker pull pandoc/latex:2.6 && \
		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 README.mediawiki
