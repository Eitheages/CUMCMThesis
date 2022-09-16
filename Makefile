THESIS = main

.PHONY : all clean cleanall

all : $(THESIS).pdf

$(THESIS).pdf : $(THESIS).tex
	@latexmk -xelatex -quiet -halt-on-error $<

clean :
	-@latexmk -c -silent $(THESIS).tex 2> /dev/null

cleanall :
	-@latexmk -C -silent $(THESIS).tex 2> /dev/null