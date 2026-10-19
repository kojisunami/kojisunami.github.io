HTML_PROJECTS = index random-thoughts misc
PDF_PROJECTS = cv-koji

.PHONY: all src

all: $(HTML_PROJECTS:%=%.html) $(PDF_PROJECTS:%=%.pdf) src

%.html : %.tex 
	latexmlc $< --dest=$@ --css=style.css

%.pdf: %.tex
	pdflatex $<

src:
	make -C src

clean:
	rm *aux *log *out *pdf
	make -C src clean

debug:
	@if [ -n "$$SSH_AUTH_SOCK" ] && ssh-add -l >/dev/null 2>&1; then \
		echo "ssh-agent is already running"; \
	else \
		echo "Starting ssh-agent..."; \
		eval "$$(ssh-agent -s)"; \
	fi
	git add .
	git status
	git commit -a -m "uploading"
	git push origin master


