## Makefile
#
#
# Make by default will make first target

bal: bal_cv.tex chirri.cls
	xelatex bal_cv.tex
	xelatex bal_cv.tex

all: bal

.PHONY: clean
clean:
	rm *.out *.aux  *.dvi  *.log

# To remove pdf metadata use the following programs
# https://www.pdflabs.com/docs/pdftk-cli-examples/
