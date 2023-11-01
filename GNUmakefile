## Submission workflow:
## #
## 1. Add your template to the TEMPLATES list
## 2. Add your template to the TOC.mediawiki
## 3. make
## 4. Check html is rendered correctly
## 5. Submit pull request

TEMPLATES:=\
TOC \
Miniscript-Template-000-Timelocks-in-Templates \
Miniscript-Template-001-3-Key-Time-Layered-Multisig \
Miniscript-Template-002-5-Time-Layered-Multisig \
Miniscript-Template-003-Multi-Institutional-Custody-One-Agent \
Miniscript-Template-004-Multi-Institutional-Custody-Two-Agents \

-: README $(TEMPLATES)

README:
	@type -P pandoc >/tmp/miniscript-template.log && \
		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@.mediawiki | \
		sed 's/__NOTOC__//' > index.html || type -P docker && docker pull pandoc/latex:2.6 && \
		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@.mediawiki

## Miniscript-Template-000-Timelocks-in-Templates:
## 	@type -P pandoc >/tmp/miniscript-template.log && \
## 		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@.mediawiki | \
## 		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
## 		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@.mediawiki
## Miniscript-Template-001-3-Key-Time-Layered-Multisig:
## 	@type -P pandoc >/tmp/miniscript-template.log && \
## 		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@.mediawiki | \
## 		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
## 		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@.mediawiki
## Miniscript-Template-002-5-Time-Layered-Multisig:
## 	@type -P pandoc >/tmp/miniscript-template.log && \
## 		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@.mediawiki | \
## 		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
## 		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@.mediawiki
## Miniscript-Template-003-Multi-Institutional-Custody-One-Agent:
## 	@type -P pandoc >/tmp/miniscript-template.log && \
## 		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@.mediawiki | \
## 		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
## 		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@.mediawiki
## Miniscript-Template-004-Multi-Institutional-Custody-Two-Agents:
## 	@type -P pandoc >/tmp/miniscript-template.log && \
## 		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@.mediawiki | \
## 		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
## 		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@.mediawiki
## 
## ##%.html: %.mediawiki $(TEMPLATES)

$(TEMPLATES).%:
	@type -P pandoc >/tmp/miniscript-template.log && \
		pandoc --preserve-tabs --ascii --from=mediawiki --to=html $@.mediawiki | \
		sed 's/__NOTOC__//' > $@.html || type -P docker && docker pull pandoc/latex:2.6 && \
		docker run --rm --volume "`pwd`:/data" --user `id -u`:`id -g` pandoc/latex:2.6 $@.mediawiki

.PHONY:$(TEMPLATES)
