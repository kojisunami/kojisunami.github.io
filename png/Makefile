
PROJECTS=fig1 fig2 fig3 fig4 fig5

.PHONY: all clean

all: $(PROJECTS:%=%.svg) 

%.dvi : %.tex
	latex $<

%.svg : %.dvi
	dvisvgm $< 

clean:
	rm -f $(PROJECTS:%=%.dvi) $(PROJECTS:%=%.svg) $(PROJECTS:%=%.log) $(PROJECTS:%=%.aux)
