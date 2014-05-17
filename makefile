all: linear_algebra.tex
	pdflatex linear_algebra.tex
	bibtex linear_algebra
	pdflatex linear_algebra.tex
	pdflatex linear_algebra.tex
clean: 
	rm -rf *.aux *.log *~ *.out *.toc *.idx *.bbl *.bcf *.blg *.ptc *.xml */*.aux */*.log */*~ *.pdf

