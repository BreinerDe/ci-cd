hello:
	echo "this is my first make command"
install:
	pip3 install --upgrade pip &&\
	pip3 install -r requirements.txt
	pip3 install pylint
lint:
	pylint --disable=R,C,E0001 hello.py
test:
	python -m pytest -vv test_hello.py