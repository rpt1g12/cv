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
LETTER = CoverLetter

all: 
	#make cv_esp
	make cv
	#make cover
	#make cover_esp
cv: 
	$(COMPILER)  $(CV).tex
	$(COMPILER) $(CV).tex >/dev/null
	$(PDFCOMPILER) $(CV).tex >/dev/null
	pdfunite $(CV).pdf $(CV)_$(LETTER).pdf  $(CV)CV_n_$(LETTER).pdf
cv_esp: 
	$(COMPILER)  $(CV)_esp.tex
	$(COMPILER) $(CV)_esp.tex >/dev/null
	$(PDFCOMPILER) $(CV)_esp.tex >/dev/null
	pdfunite $(CV).pdf $(CV)_$(LETTER).pdf  $(CV)_esp_CV_n_$(LETTER)_esp.pdf
cover: 
	$(COMPILER)  $(LETTER).tex
	$(COMPILER) $(LETTER).tex >/dev/null
	$(PDFCOMPILER) $(LETTER).tex >/dev/null
	pdfunite $(CV).pdf $(CV)_$(LETTER).pdf  $(CV)CV_n_$(LETTER).pdf
cover_esp: 
	$(COMPILER)  $(LETTER)_esp.tex
	$(COMPILER) $(LETTER)_esp.tex >/dev/null
	$(PDFCOMPILER) $(LETTER)_esp.tex >/dev/null
	pdfunite $(CV).pdf $(CV)_$(LETTER).pdf  $(CV)_esp_CV_n_$(LETTER)_esp.pdf
