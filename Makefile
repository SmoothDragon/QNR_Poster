.PHONY: main clean FORCE

main: poster.pdf

poster.pdf: FORCE
	latexmk -pdflatex='lualatex -interaction nonstopmode' -pdf poster.tex

QNR_poster.pdf: FORCE
	latexmk -pdflatex='lualatex -interaction nonstopmode' -pdf QNR_poster.tex

clean:
	latexmk -pdf -C
