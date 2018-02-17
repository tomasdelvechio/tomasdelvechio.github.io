<!--
.. title: Configuración para Sublime Text 3
.. slug: configuracion-para-sublime-text-3
.. date: 2018-02-03 12:15:40 UTC-03:00
.. tags: dev, tools, sublime, programming
.. category: dev
.. link:
.. description: Configuracion personalizada para Sublime Text 3
.. type: text
-->

![Logo Sublime Text 3](/img/blog/2018/logo-sublime-text-3.png "Logo de Sublime Text 3")

Soy usuario activo de Sublime Text 3. Para proyectos pequeños o creacion de
scripts, es el editor con el que me siento mas comodo trabajando.

La configuración default que tiene visual tiene algunos problemas. Lo primero
que hago al instalar Sublime es editar un par de estas configuraciones, y dejo
aca el archivo de configuración tal como lo tengo actualmente

	{
		"bold_folder_labels": true,
		"caret_style": "phase",
		"draw_white_space": "all",
		"fade_fold_buttons": false,
		"font_face": "Inconsolata",
		"font_size": 12,
		"highlight_line": true,
		"highlight_modified_tabs": true,
		"ignored_packages":
		[
			"Vintage"
		],
		"line_padding_bottom": 5.5,
		"line_padding_top": 5.5,
		"rulers":
		[
			80,
			120
		],
		"tab_size": 4,
		"trim_trailing_white_space_on_save": true
	}

### Sobre las fuentes

La configuración `font_face` indica la fuente utilizada. Inconsolata no es una
fuente que venga instalada por default. Para instalarla en Ubuntu, por ejemplo:

	sudo apt install fonts-inconsolata

## Plugines

Ademas de la configuración visual, Sublime tiene una amplia cantidad de plugins.

Aca va un listado de los que actualmente estoy utilizando:

 * All Autocomplete
 * BracketHighlighter
 * DocBlockr
 * GitGutter
 * Laravel Blade Highlighter
 * PHP Companion
 * SublimeCodeIntel
 * SublimeLinter-php

## Temas

Existen muchisimos temas para Sublime. Puntualmente estoy en estos momentos
utilizando [Brogrammer][1].

[1]: https://github.com/kenwheeler/brogrammer-theme
