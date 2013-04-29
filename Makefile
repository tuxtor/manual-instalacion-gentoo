PAN=pandoc
all:
	$(PAN) -H header.tex manual.md -o manual.pdf
	$(PAN) manual.md -o index.html

view:
	$(PAN) -H header.tex manual.md -o manual.pdf&&evince manual.pdf

html:
	$(PAN) manual.md -o index.html

clean:
	rm -rf *.pdf
	rm -rf *.html
