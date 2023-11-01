-:README.mediawiki
README.mediawiki:
	@type -P pandoc >/tmp/miniscript-template.log && \
		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@ | \
		sed 's/__NOTOC__//' > index.html || type -P docker && docker pull pandoc/latex:2.6 && \
		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@

Miniscript-Template-000-Timelocks-in-Templates.mediawiki:
	@type -P pandoc >/tmp/miniscript-template.log && \
		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@ | \
		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@
Miniscript-Template-001-3-Key-Time-Layered-Multisig.mediawiki:
	@type -P pandoc >/tmp/miniscript-template.log && \
		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@ | \
		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@
Miniscript-Template-002-5-Time-Layered-Multisig.mediawiki:
	@type -P pandoc >/tmp/miniscript-template.log && \
		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@ | \
		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@
Miniscript-Template-003-Multi-Institutional-Custody-One-Agent.mediawiki:
	@type -P pandoc >/tmp/miniscript-template.log && \
		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@ | \
		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@
Miniscript-Template-004-Multi-Institutional-Custody-Two-Agents.mediawiki:
	@type -P pandoc >/tmp/miniscript-template.log && \
		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@ | \
		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@

.PHONY:*.mediawiki
