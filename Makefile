VENV_PATH = .venv
VENV_ACTIVATE = . $(VENV_PATH)/bin/activate

#VENV_ACTIVATE = . .venv/bin/activate || (echo "Virtual environment not found. Creating one..." && python3 -m venv .venv)

.ONESHELL:

.PHONY: install serve gh-push post

install: $(VENV_PATH)
	pip install -r requirements.txt

serve: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola build
	$(VENV_ACTIVATE) && nikola serve -b

gh-push: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola github_deploy

post: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola new_post --format=markdown

$(VENV_PATH):
	@test -d $(VENV_PATH) || python3 -m venv $(VENV_PATH)


