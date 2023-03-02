MAIN_FILE=srs.tex
COMPILER=pdflatex

default: document

document: $(MAIN_FILE)
	$(COMPILER) $<
	$(COMPILER) $<

clean:
	rm -r *.aux *.log *.out *.toc
