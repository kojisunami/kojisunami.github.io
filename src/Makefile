

PROJECTS = ainfty-geometry dgla-stack dt-moduli  what-math

all: $(PROJECTS:%=%.pdf)

%.pdf : %.tex 
	pdflatex $*
	biber $*
	pdflatex $*
	pdflatex $*



