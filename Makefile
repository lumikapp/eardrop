deps:
	pip install -Ur requirements.txt --no-cache-dir --force-reinstall

component_test:

integration_test:

unit_test:
	pytest eyedrop/test/unit_test/ \
		--cov-report=term --cov-report=html --cov-report=xml \
		--cov-branch --cov=eyedrop/src

test_code: unit_test component_test integration_test

test_docs:

test_lint:

test_all: test_lint test_docs test_code

check_deploy:

deploy: test_all check_deploy
