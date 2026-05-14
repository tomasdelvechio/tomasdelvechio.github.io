VENV_PATH = .venv
VENV_ACTIVATE = . $(VENV_PATH)/bin/activate

.ONESHELL:

.PHONY: help install build serve auto clean check post page gh-push

help:
	@echo "Nikola Static Site Generator - Comandos disponibles:"
	@echo "  make install  - Instalar/actualizar dependencias en el entorno virtual"
	@echo "  make build    - Generar el sitio (incremental)"
	@echo "  make serve    - Iniciar servidor de desarrollo local"
	@echo "  make auto     - Servidor con reconstrucción automática al detectar cambios"
	@echo "  make clean    - Eliminar archivos generados (output/ y cache/)"
	@echo "  make check    - Verificar enlaces rotos y archivos huérfanos"
	@echo "  make post     - Crear un nuevo post (Markdown)"
	@echo "  make page     - Crear una nueva página estática (Markdown)"
	@echo "  make gh-push  - Desplegar a GitHub Pages"

install: $(VENV_PATH)
	$(VENV_ACTIVATE) && pip install -r requirements.txt

build: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola build

serve: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola build
	$(VENV_ACTIVATE) && nikola serve -b

auto: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola auto -b

clean: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola clean

check: $(VENV_PATH)
	@echo "Omitiendo 'old/' temporalmente para acelerar el chequeo..."
	@mv output/old .old_tmp 2>/dev/null || true
	-$(VENV_ACTIVATE) && nikola check -l -r
	@mv .old_tmp output/old 2>/dev/null || true

post: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola new_post --format=markdown

page: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola new_page --format=markdown

gh-push: $(VENV_PATH)
	$(VENV_ACTIVATE) && nikola github_deploy

$(VENV_PATH):
	@test -d $(VENV_PATH) || python3 -m venv $(VENV_PATH)
