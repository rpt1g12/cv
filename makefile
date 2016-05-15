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
LETTER = coverLetter

all: 
	make cv
cv: 
	$(COMPILER)  $(CV).tex
	$(COMPILER) $(CV).tex >/dev/null
	$(PDFCOMPILER) $(CV).tex >/dev/null
cover: 
	$(COMPILER)  $(LETTER).tex
	$(COMPILER) $(LETTER).tex >/dev/null
	$(PDFCOMPILER) $(LETTER).tex >/dev/null

