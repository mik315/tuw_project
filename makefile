SHELL := /bin/bash
GUTIM=$(shell HISTTIMEFORMAT="%d/%m/%y %T ") 
README.md:
	touch README.md
	@echo "# Project The Guessing Game" > README.md
	@echo " " >> README.md
	source guessinggame.sh && countlines