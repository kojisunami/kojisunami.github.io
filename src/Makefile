PROJECTS = ainfty-geometry dgla-stack dt-moduli  what-math
.PHONY: all
all: $(PROJECTS:%=%.pdf)

%.pdf : %.tex 
	latexmk -pdf $<
#	pdflatex $*
#	@if [ -f $*.bib ]; then biber $*; fi
#	pdflatex $*
#	pdflatex $*


clean :
	rm *aux *bbl *bcf *blg *log *out *xml *pdf *fls *fdb_latexmk

