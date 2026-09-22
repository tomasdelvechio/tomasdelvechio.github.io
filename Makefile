VENV_PATH = .venv
VENV_ACTIVATE = . $(VENV_PATH)/bin/activate

.ONESHELL:

.PHONY: help install build dev serve auto clean venv-clean check check-remote status post page deploy gh-push

help:
	@echo "Nikola Static Site Generator - Comandos disponibles:"
	@echo "  make install      - Instalar/actualizar dependencias en el entorno virtual"
	@echo "  make dev          - Servidor de desarrollo con recarga automática (http://localhost:8000)"
	@echo "  make build        - Generar el sitio estático (incremental)"
	@echo "  make serve        - Servidor local básico (sin recarga automática)"
	@echo "  make auto         - Alias de make dev"
	@echo "  make status       - Ver estado de publicaciones (publicadas, borradores, etc.)"
	@echo "  make post         - Crear un nuevo post (Markdown) y abrirlo si \$$EDITOR está definido"
	@echo "  make page         - Crear una nueva página estática (Markdown)"
	@echo "  make check        - Verificar enlaces internos rotos y archivos huérfanos"
	@echo "  make check-remote - Verificar enlaces remotos externos (lento/requiere red)"
	@echo "  make deploy       - Desplegar a GitHub Pages con verificación previa"
	@echo "  make clean        - Eliminar archivos generados (output/, cache/ y .doit.db)"
	@echo "  make venv-clean   - Eliminar el entorno virtual (.venv/)"

install: $(VENV_PATH)
	$(VENV_ACTIVATE) && pip install -r requirements.txt

build: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola build

dev: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola auto

auto: dev

serve: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola build
	$(VENV_ACTIVATE) && nikola serve

status: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola status

clean: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola clean
	rm -rf output/ cache/ .doit.db*

venv-clean:
	rm -rf $(VENV_PATH)

check: $(VENV_PATH)
	@echo "Omitiendo 'old/' temporalmente para acelerar el chequeo..."
	@mv output/old .old_tmp 2>/dev/null || true
	-$(VENV_ACTIVATE) && nikola check -l -f
	@mv .old_tmp output/old 2>/dev/null || true

check-remote: $(VENV_PATH)
	@echo "Omitiendo 'old/' temporalmente para acelerar el chequeo..."
	@mv output/old .old_tmp 2>/dev/null || true
	-$(VENV_ACTIVATE) && nikola check -r
	@mv .old_tmp output/old 2>/dev/null || true

post: $(VENV_PATH)
	@if [ -n "$$EDITOR" ]; then \
		$(VENV_ACTIVATE) && nikola new_post -e --format=markdown; \
	else \
		$(VENV_ACTIVATE) && nikola new_post --format=markdown; \
	fi

page: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola new_page --format=markdown

deploy: $(VENV_PATH)
	@echo "Ejecutando verificaciones previas..."
	@make check
	@echo "Desplegando en GitHub Pages..."
	$(VENV_ACTIVATE) && nikola github_deploy

gh-push: deploy

$(VENV_PATH):
	@if [ ! -x $(VENV_PATH)/bin/python ] || ! $(VENV_PATH)/bin/python -c "import sys" 2>/dev/null; then \
		echo "Creando/reparando entorno virtual en $(VENV_PATH)..."; \
		rm -rf $(VENV_PATH); \
		python3 -m venv $(VENV_PATH); \
	fi
