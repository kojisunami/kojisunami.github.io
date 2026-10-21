
PROJECTS=fig1

.PHONY: all clean

all: $(PROJECTS:%=%.svg) 

%.dvi : %.tex
	latex $<

%.svg : %.dvi
	dvisvgm $< 

clean:
	rm -f $(PROJECTS:%=%.dvi) $(PROJECTS:%=%.svg) $(PROJECTS:%=%.log) $(PROJECTS:%=%.aux)
