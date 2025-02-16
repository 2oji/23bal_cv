## Makefile
#
#
# Make by default will make first target

bal: bal_cv.tex chirri.cls
	xelatex bal_cv.tex
	xelatex bal_cv.tex

pin: pin.tex
	latex pin.tex
	latex pin.tex
	dvipdf pin.dvi
	dvips pin.dvi

# First compile pin and then final document
all: pin bal

.PHONY: clean
clean:
	rm *.out *.aux  *.dvi  *.log

# To remove pdf metadata use the following programs
# https://www.pdflabs.com/docs/pdftk-cli-examples/
