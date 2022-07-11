hello:
	echo "this is my first make command"
install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt
	pip install pylint
lint:
	pylint --disable=R,C hello.py
test:
	python -m pytest -vv test_hello.py