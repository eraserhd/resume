
ALL_RESUME_SOURCES	= $(filter-out resume.tex,$(wildcard *.tex))
ALL_RESUMES             = $(ALL_RESUME_SOURCES:.tex=.pdf)


all: $(ALL_RESUMES)

techwords.png: Makefile techwords.py
	python techwords.py

%.pdf: %.tex Makefile resume.tex techwords.png
	rm -f $*.aux
	pdflatex $<
	pdflatex $<
