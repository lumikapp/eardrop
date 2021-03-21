deps:
	pip install -Ur requirements.txt --no-cache-dir --force-reinstall

component_test:

integration_test:

unit_test:
	pytest eyedrop/test/unit_test/ \
		--cov-report=term --cov-report=html --cov-report=xml \
		--cov-branch --cov=eyedrop/src

test: unit_test component_test integration_test

packages:
	python setup.py sdist bdist_wheel
	twine check dist/*

publish: packages
	twine upload dist/*
