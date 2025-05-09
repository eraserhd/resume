
all: resume.pdf

techwords.png: Makefile techwords.txt
	wordcloud_cli --regexp '[-+A-Za-z]+' \
	  --text techwords.txt \
	  --background white \
	  --relative_scaling 1 \
	  --margin 5 \
	  --random_state 0 \
	  --width 600 \
	  --fontfile $(FONT)/share/fonts/opentype/FiraSansCompressed-Regular.otf >$@

resume.pdf: Makefile resume.tex techwords.png
	# Needed twice to update arrows
	rm -f resume.aux # forget about previous positions of things
	pdflatex resume.tex
	pdflatex resume.tex
