rpm:
	python setup.py bdist_rpm --requires 'diesel>=3.0 greenlet==0.3.4 requests'

readme:
	rm README && pandoc -f markdown -t plain README.md -o README

clean:
	rm -rf build
