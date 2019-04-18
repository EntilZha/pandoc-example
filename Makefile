SOURCE_DOCS := $(wildcard *.md)
EXPORTED_DOCS=$(SOURCE_DOCS:.md=.pdf)

%.pdf: %.md refs.bib
	pandoc --filter pandoc-crossref --filter pandoc-citeproc -o $@ $<

.PHONY: all clean

all: $(EXPORTED_DOCS)

clean:
	rm *.pdf
