component_test:

integration_test:

unit_test:
	pytest eyedrop/test/ -s

test: unit_test component_test integration_test

test_docs:

test_lint:

test_all: test_lint test_docs test

check_deploy:

deploy: test_all check_deploy
