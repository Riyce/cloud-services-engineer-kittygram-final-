SHELL := /bin/bash

deps-prod:
	python -m pip install --upgrade pip
	pip3 install -r backend/requirements.txt

deps-dev:
	python -m pip install --upgrade pip
	pip3 install -r backend/requirements.dev.txt

lint:
	python -m flake8 backend/

test:
	python backend/manage.py test