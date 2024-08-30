PROJECT_NAME := lexicographically-smallest-string
PYTHON_VERSION := 3.12.5
VENV_NAME := $(PROJECT_NAME)-$(PYTHON_VERSION)
PATH_TO_REQUIREMENTS := 

.create-venv:
	CC=clang pyenv install -s $(PYTHON_VERSION)
	pyenv uninstall -f $(VENV_NAME)
	pyenv virtualenv $(PYTHON_VERSION) $(VENV_NAME)
	pyenv local $(VENV_NAME)
	pip install pip -U

setup:
	pip install -r $(PATH_TO_REQUIREMENTS)requirements.txt

create-venv: .create-venv setup

tests:
	pytest . -v

format:
	ruff format . -v

check:
	ruff check . -v