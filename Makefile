

all: index.html random-thoughts.html misc.html cv-koji.pdf

index.html : index.tex 
	latexmlc index.tex --dest=index.html --css=style.css

misc.html : misc.tex 
	latexmlc misc.tex --dest=misc.html --css=style.css

random-thoughts.html : random-thoughts.tex
	latexmlc random-thoughts.tex --dest=random-thoughts.html --css=style.css

cv-koji.pdf: cv-koji.tex
	pdflatex cv-koji.tex

debug:
	git add .
	git status
	git commit -a -m "uploading"
	git push origin master


