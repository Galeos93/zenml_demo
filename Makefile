env-create:
	tox -e zenml_demo

env-compile:
	pip-compile requirements.in --output-file requirements.txt --max-rounds 20
	pip-compile requirements-dev.in --output-file requirements-dev.txt --max-rounds 20

test:
	pytest tests

lint:
	pylint --rcfile zero_deforestation/.pylintrc zero_deforestation
