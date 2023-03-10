test:
	@python3 -m pytest

lint:
	@python3 -m flake8

develop:
	@python3 -m pip install -e .[develop]

clean:
	@find . -name '__pycache__' | xargs rm -fr

help:
	@echo "\
Targets\n\
------------------------------------------------------------------------\n\
 test:		Perform unit testing on the source code\n\
 lint:		Perform quality checks on the source code\n\
 develop:	Installs all requirements and testing requirements\n\
 clean:		Removes built Python Packages and cached byte code\n\
 help:		Displays the help menu with all the targets\n";

.DEFAULT_GOAL := help
.PHONY: test lint patch dev clean help
