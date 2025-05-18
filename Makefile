
ALL_JOB_DESCRIPTIONS    = $(wildcard *.txt)
ALL_RESUME_SOURCES	= $(filter-out resume.tex,$(wildcard *.tex)) $(filter-out prompt.tex,$(ALL_JOB_DESCRIPTIONS:.txt=.tex))
ALL_RESUMES             = $(ALL_RESUME_SOURCES:.tex=.pdf)

all: $(ALL_RESUMES)

techwords.png: Makefile techwords.py
	python techwords.py

%.tex: %.txt
	ollama run gemma3:4b "$$(cat prompt.txt)$$(cat $<)" |tee $@

%.pdf: %.tex Makefile resume.tex techwords.png
	rm -f $*.aux
	pdflatex $<
	pdflatex $<
