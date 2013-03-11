.PHONY: all

all:		thesis.pdf

thesis.pdf:	thesis.tex force
			latexmk -pdf $<

force:		;

.PHONY: clean

clean:
			latexmk -C
			rm -f *.auxlock *.snm *.nav *.out *.fdb_latexmk *.vrb *.table *.gnuplot *-blx.bib *.mtc* *.maf *.bbl *.run.xml


.PHONY: tikzclean

tikzclean:	clean
			rm -f externalized/*.pdf externalized/*.dpth externalized/*.log	externalized/*.idx externalized/*.run.xml externalized/*.dep externalized/*.md5 externalized/*.gnuplot externalized/*.table

.PHONY: nup

nup:		thesis.pdf
			pdfnup thesis.pdf			
