.ONESHELL:

install:
	. .venv/bin/activate
	pip install -r requirements.txt

serve:
	. .venv/bin/activate
	nikola build
	nikola serve -b
#nikola auto --browser
#	nikola build
#	nikola auto --browser