PAN=pandoc
all:
	$(PAN) -H header.tex manual.md -o manual.pdf
	$(PAN) manual.md -o manual.html

view:
	$(PAN) -H header.tex manual.md -o manual.pdf&&evince resume.pdf

html:
	$(PAN) manual.md -o manual.html

clean:
	rm -rf *.pdf
	rm -rf *.html
