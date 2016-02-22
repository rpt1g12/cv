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
NAME = cv

all: 
	$(COMPILER)  $(NAME).tex
	$(COMPILER) $(NAME).tex >/dev/null
	$(PDFCOMPILER) $(NAME).tex >/dev/null

