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
	make cover
cv: 
	$(COMPILER)  $(CV).tex
	$(COMPILER) $(CV).tex >/dev/null
	$(PDFCOMPILER) $(CV).tex >/dev/null
	pdfunite $(CV).pdf $(CV)_$(LETTER).pdf  $(CV)CV_n_$(LETTER).pdf
cover: 
	$(COMPILER)  $(CV)_$(LETTER).tex
	$(COMPILER) $(CV)_$(LETTER).tex >/dev/null
	$(PDFCOMPILER) $(CV)_$(LETTER).tex >/dev/null
	pdfunite $(CV).pdf $(CV)_$(LETTER).pdf  $(CV)CV_n_$(LETTER).pdf

