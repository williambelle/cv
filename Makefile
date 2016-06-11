.PHONY: cv.pdf all clean

all: cv.pdf

cv.pdf: src/cv.tex
	cd src ; latexmk -pdf -pdflatex="xelatex" -use-make cv.tex

clean:
	cd src ; latexmk -CA
