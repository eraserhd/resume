
all: resume.pdf

techwords.png: Makefile techwords.txt
	wordcloud_cli --regexp '[-+A-Za-z]+' \
	  --text techwords.txt \
	  --background white \
	  --margin 5 \
	  --random_state 0 \
	  --width 600 \
	  --fontfile $(FONT)/share/fonts/opentype/FiraSansCompressed-Regular.otf >$@

resume.pdf: Makefile resume.tex techwords.png profile.jpg
	# Needed twice to update arrows
	rm resume.aux # forget about previous positions of things
	lualatex resume.tex
	lualatex resume.tex
