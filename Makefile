package:
	python -m pip install --user --upgrade setuptools wheel
	python setup.py sdist bdist_wheel

publish: package
	python -m pip install twine
	python -m twine upload --username ${PYPI_USERNAME} --password ${PYPI_PASSWORD} --repository-url https://upload.pypi.org/legacy/ dist/*
