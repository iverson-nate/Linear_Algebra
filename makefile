FILE=linear_algebra.tex
BIBFILE=linear_algebra
TEX=pdflatex
BIBTEX=bibtex

all: bib pdf

bib: $(FILE)
	$(TEX) $(FILE)
	$(BIBTEX) $(BIBFILE)

pdf: $(FILE)
	$(TEX) $(FILE)
	$(TEX) $(FILE)
clean: 
	rm -rf *.aux *.log *~ *.out *.toc *.idx *.bbl *.bcf *.blg *.ptc *.xml */*.aux */*.log */*~ *.pdf vc.tex


