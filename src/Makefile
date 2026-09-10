PROJECTS = ainfty-geometry dgla-stack dt-moduli  what-math
.PHONY: all
all: $(PROJECTS:%=%.pdf)

%.pdf : %.tex 
	pdflatex $*
	biber $*
	pdflatex $*
	pdflatex $*

clean :
	rm *aux *bbl *bcf *blg *log *out *xml

