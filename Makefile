
all: resume.pdf

%.png: %.dot
	dot -Tpng -o$@ $<

resume.pdf: resume.tex stack_graph.png profile.jpg
	pdflatex resume.tex
