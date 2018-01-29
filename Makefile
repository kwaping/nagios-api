.PHONY: clean all

all: clean rpm

rpm:
	python setup.py bdist_rpm --requires 'python-diesel >= 3.0, python-greenlet >= 0.3.4, python-requests'

readme: README.md
	rm -f README && pandoc -f markdown -t plain README.md -o README

clean:
	rm -rf build/ dist/

