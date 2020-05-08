setup:
	python3 -m venv ~/.builddocker

install:
	pip install --upgrade pip &&\
	pip install -r requirments.txt

test:
lint:
	hadolint dockerfile
	pylint --disable=R,C,W1203 app.py

all: install lint test
