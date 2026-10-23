## Makefile
#
#
# Make by default will make first target
# First compile pin and then final document
all: output pin bal

output:
	mkdir -p output

bal: bal_cv.tex design
	xelatex -output-directory=./output bal_cv.tex
	xelatex -output-directory=./output bal_cv.tex

pin: output data/pin.tex
	latex -output-directory=./output data/pin.tex
	latex -output-directory=./output data/pin.tex
	cd output && dvipdf pin.dvi
	cd output && dvips pin.dvi

cv: output
	pdflatex -output-directory=./output resume.tex
	pdflatex -output-directory=./output resume.tex
	pdflatex -output-directory=./output resume.tex

.PHONY: clean
clean:
	rm output/*.out output/*.aux  output/*.dvi  output/*.log
	rm *.aux  *.log  *.out


# To remove pdf metadata use the following programs
# https://www.pdflabs.com/docs/pdftk-cli-examples/
