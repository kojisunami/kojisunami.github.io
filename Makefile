HTML_PROJECTS = index random-thoughts misc
PDF_PROJECTS = cv-koji

.PHONY: all src

all: $(HTML_PROJECTS:%=%.html) $(PDF_PROJECTS:%=%.pdf) src

%.html : %.tex 
	latexmlc $< --dest=$@ --css=style.css

%.pdf: %.tex
	pdflatex $*

src:
	make -C src

clean:
	rm *aux *log *out
	make -C src clean

debug:
	git add .
	git status
	git commit -a -m "uploading"
	git push origin master


