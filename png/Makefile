
PROJECTS=fig1 fig2 fig3

.PHONY: all clean

all: $(PROJECTS:%=%.svg) 

%.dvi : %.tex
	latex $<

%.svg : %.dvi
	dvisvgm $< 

clean:
	rm -f $(PROJECTS:%=%.dvi) $(PROJECTS:%=%.svg) $(PROJECTS:%=%.log) $(PROJECTS:%=%.aux)
