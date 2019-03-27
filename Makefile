.PHONY: clean

all: build/sota.pdf build/sota_redacted.pdf

build/sota.pdf: sota.tex sota.bib
	latexmk -outdir=build -pdf sota.tex

build/sota_redacted.pdf: sota_redacted.tex sota.tex sota.bib
	latexmk -outdir=build -pdf sota_redacted.tex

clean:
	rm -rf build/
