
all: resume.pdf

techwords.png: Makefile techwords.txt
	wordcloud_cli --regexp '[-+A-Za-z]+' --text techwords.txt --background white --margin 5 --random_state 1 >$@

resume.pdf: Makefile resume.tex techwords.png profile.jpg
	# Needed twice to update arrows
	rm resume.aux # forget about previous positions of things
	lualatex resume.tex
	lualatex resume.tex
