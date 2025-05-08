
all: resume.pdf

%.png: %.dot
	dot -Tpng -o$@ $<

resume.pdf: resume.tex stack_graph.png profile.jpg
	# Needed twice to update arrows
	rm resume.aux # forget about previous positions of things
	lualatex resume.tex
	lualatex resume.tex
