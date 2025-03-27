VENV_ACTIVATE = . .venv/bin/activate || (echo "Virtual environment not found. Creating one..." && python3 -m venv .venv)

.ONESHELL:

.PHONY: install serve gh-push post activate

install: activate
	pip install -r requirements.txt

serve: activate
	nikola build
	nikola serve -b

gh-push: activate
	nikola github_deploy

post: activate
	nikola new_post --format=markdown

activate:
	@$(VENV_ACTIVATE)

