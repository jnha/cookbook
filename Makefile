# Makefile for cookbook
COMPILE = pdflatex

BIB = bibtex 

FILES = *.tex *.bib

AUX_FILES = *.aux *.toc *.bbl *.blg *.loa *.lof *.log *.lol *.lot *.out

PAPER = food

$(PAPER).pdf:
	$(COMPILE) $(PAPER)
	$(BIB) $(PAPER) || true
	$(COMPILE) $(PAPER)
	$(COMPILE) $(PAPER)

all: $(PAPER).pdf

clean:
	rm -f $(AUX_FILES) $(PAPER).pdf

