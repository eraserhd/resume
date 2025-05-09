
all: resume.pdf

techwords.png: Makefile techwords.py
	python techwords.py

resume.pdf: Makefile resume.tex techwords.png
	# Needed twice to update arrows
	rm -f resume.aux # forget about previous positions of things
	pdflatex resume.tex
	pdflatex resume.tex
