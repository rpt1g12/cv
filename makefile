# ============================================================================
# Name        : Makefile
# Author      : 
# Version     :
# Copyright   : Your copyright notice
# Description : Makefile for Fortran
# ============================================================================
.PHONY: all

# Change this line if you are using a different Fortran compiler
COMPILER = pdflatex
PDFCOMPILER = pdflatex
CV = RPerezTorro
FORMAL = RPerezTorroCV
LETTER = RPerezTorro_CoverLetter

all: 
	#make cv_esp
	#make cv
	make formal
	make cover
	#make cover_esp
cv: 
	$(COMPILER)  $(CV).tex
	$(COMPILER) $(CV).tex >/dev/null
	$(PDFCOMPILER) $(CV).tex >/dev/null
cv_esp: 
	$(COMPILER)  $(CV)_esp.tex
	$(COMPILER) $(CV)_esp.tex >/dev/null
	$(PDFCOMPILER) $(CV)_esp.tex >/dev/null
cover: 
	$(COMPILER)  $(LETTER).tex
	$(COMPILER) $(LETTER).tex >/dev/null
	$(PDFCOMPILER) $(LETTER).tex >/dev/null
cover_esp: 
	$(COMPILER)  $(LETTER)_esp.tex
	$(COMPILER) $(LETTER)_esp.tex >/dev/null
	$(PDFCOMPILER) $(LETTER)_esp.tex >/dev/null
formal:
	$(COMPILER)  $(FORMAL).tex
	$(COMPILER) $(FORMAL).tex >/dev/null
	$(PDFCOMPILER) $(FORMAL).tex >/dev/null
