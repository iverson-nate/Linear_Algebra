FILE=linear_algebra.tex
BIBFILE=linear_algebra
TEX=pdflatex
BIBTEX=bibtex

all: vc.tex bib pdf

bib: $(FILE)
	$(TEX) $(FILE)
	$(BIBTEX) $(BIBFILE)

pdf: $(FILE)
	$(TEX) $(FILE)
	$(TEX) $(FILE)
clean: 
	rm -rf *.aux *.log *~ *.out *.toc *.idx *.bbl *.bcf *.blg *.ptc *.xml */*.aux */*.log */*~ *.pdf vc.tex

vc.tex: .git/logs/HEAD
	echo "%%% This file is generated by Makefile." > vc.tex
	echo "%%% Do not edit this file!\n%%%" >> vc.tex
	git log -1 --format="format:\
		\\gdef\\GITAbrHash{%h}\
		\\gdef\\GITAuthorDate{%ad}\
		\\gdef\\GITAuthorName{%an}" >> vc.tex
