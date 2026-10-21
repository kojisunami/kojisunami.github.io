HTML_PROJECTS = index art misc
PDF_PROJECTS = cv-koji

.PHONY: all src png

all: $(HTML_PROJECTS:%=%.html) $(PDF_PROJECTS:%=%.pdf) src png

%.html : %.tex 
	latexmlc "$<" --dest="$@" --css=style.css

%.pdf: %.tex
	pdflatex "$<"

src:
	make -C src

png:
	make -C png

clean:
	rm -f $(HTML_PROJECTS:%=%.html) $(HTML_PROJECTS:%=%.log) $(HTML_PROJECTS:%=%.aux) $(HTML_PROJECTS:%=%.out) $(HTML_PROJECTS:%=%.latexml.log)
	rm -f $(PDF_PROJECTS:%=%.pdf) $(PDF_PROJECTS:%=%.aux) $(PDF_PROJECTS:%=%.log) $(PDF_PROJECTS:%=%.out) $(PDF_PROJECTS:%=%.pdfsync)
	rm -f LaTeXML.cache LaTeXML.css ltx-article.css
	make -C src clean
	make -C png clean

debug:
	. ./a
	git add .
	git status
	git commit -a -m "uploading"
	git push origin master


