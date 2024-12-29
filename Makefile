SHELL := /bin/bash
SERVICE = kittygram-backend
SERVICE_DIR = backend

pyenv:
	pyenv install -s 3.9.7 && pyenv virtualenv -f 3.9.7 $(SERVICE)

deps: deps-prepare deps-prod deps-dev deps-check

deps-prepare:
	pip install -U pip
	pip install setuptools wheel

deps-prod:
	pip install -r $(SERVICE_DIR)/requirements.txt

deps-dev:
	pip install -r $(SERVICE_DIR)/requirements.dev.txt

deps-check:
	pip check

backend-lint: black isort flake8

flake8:
	python -m flake8 $(SERVICE_DIR)/

black:
	black --check $(SERVICE_DIR)/

isort:
	isort --check $(SERVICE_DIR)/

backend-test:
	python $(SERVICE_DIR)/manage.py test
	pytest
