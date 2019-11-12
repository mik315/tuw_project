SHELL := /bin/bash
linesguess := $(shell cat guessinggame.sh | wc -l)
make_thistime := $(shell date)
README.md:
	touch README.md
	@echo "# Project The Guessing Game" > README.md
	@echo " " >> README.md
	@echo "The date and time at which make was run is: " $(make_thistime) >> README.md
	@echo " " >> README.md
	@echo "The number of lines of code contained in guessinggame.sh is: " $(linesguess) >> README.md
	@echo " " >> README.md