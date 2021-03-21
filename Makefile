deps:
	pip install --upgrade pip
	pip install -r requirements.txt --no-cache-dir --force-reinstall

versioning:
	echo $TRAVIS_TAG > eyedrop/versioning.txt

component_test:

integration_test:

unit_test:
	pytest eyedrop/test/unit_test/ \
		--cov-report=term --cov-report=html --cov-report=xml \
		--cov-branch --cov=eyedrop/src

test: unit_test component_test integration_test

packages: versioning
	python setup.py sdist bdist_wheel
	twine check dist/*

all: deps test packages

# Used only by CI/CD
publish: packages versioning
	twine upload dist/*
