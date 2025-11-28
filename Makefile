## Makefile
#
#
# Make by default will make first target
# First compile pin and then final document
all: pin bal

bal: bal_cv.tex design
	xelatex bal_cv.tex
	xelatex bal_cv.tex

pin: pin.tex
	latex pin.tex
	latex pin.tex
	dvipdf pin.dvi
	dvips pin.dvi

.PHONY: clean
clean:
	rm *.out *.aux  *.dvi  *.log

# To remove pdf metadata use the following programs
# https://www.pdflabs.com/docs/pdftk-cli-examples/
