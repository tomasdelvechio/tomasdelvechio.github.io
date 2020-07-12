<!--
.. title: Screencasts en Gnome 3
.. slug: screencasts-en-gnome-3
.. date: 2020-07-12 16:59:48 UTC-03:00
.. tags:
.. category:
.. link:
.. description:
.. type: text
-->

Estoy preparando una charla que voy a dar en un par de semanas. Como material de la misma voy a integrar algunos videos de ejemplos, para no tener que ejecutarlos en vivo (porque a veces pueden fallar, roba tiempo de la charla, que la idea es que sea fluida, etc...)

Cuestión que, al no estar subido a la moda de ser Youtuber ni Streamer ni similar, no manejo el set de software estándar (Si, ya se, OBS + algún que otro editor onda Kdenlive). Esta bueno eso, pero a veces puede sonar a demasiado.

Soy usuario de Ubuntu + Gnome 3 desde hace años, y en algún momento me había cruzado con un atajo de teclado para activar una grabación del escritorio. Lo olvidé, pero en Reddit [hoy me volvi a cruzar con eso](https://www.reddit.com/r/gnome/comments/hpxzfg/til_you_can_use_shiftctrlaltr_to_record_a_video/), y recordé lo simple que era para evitar OBS (que de nuevo, esta muy bien, pero puede ser demasiado).

Lo estuve probando, y si bien no se si es lo que voy a usar definitivo, si esta bueno tener "a mano", saber que existe y como usarlo.

## Screencast en Gnome 3

Antes yo lo conocía como Screencast, hoy son Vlogs o directamente un canal de Youtube. La idea es clips de videos que muestren como hacer algo "técnico", una solución a algo o documentar la forma de arreglar un problema.

Gnome 3 tiene la funcionalidad nativa de hacer Screencast casi [desde que salió](https://help.gnome.org/users/gnome-help/stable/screen-shot-record.html#screencast).

Para activarla, basta ejecutar `Ctrl` + `Alt` + `Shift` + `R`. Eso hace que en el panel de arriba a la derecha aparezca un icono "rojo".

<blockquote class="imgur-embed-pub" lang="en" data-id="yf5BVor" data-context="false"><a href="//imgur.com/yf5BVor">TIL you can use Shift+Ctrl+Alt+R to record a video of the screen.</a></blockquote><script async src="//s.imgur.com/min/embed.js" charset="utf-8"></script>
source: <https://imgur.com/yf5BVor>

Ellos dicen que lo integraron por propósitos de depuración. Con lo cual, las configuraciones por defecto son bastante pobres. Por ejemplo, el máximo de grabación por defecto son 30 segundos.

Como todo desde que encararon esa filosofía del nuevo escritorio, lo dejaron ahí, muy poco documentado, y se olvidaron. No se si se olvidaron, pero cuando un usuario les pide que le agreguen "opciones" la respuesta es "esta ahí, que alguien haga una extensión". Que se yo, cada uno maneja sus comunidades como quiere, y a Gnome la verdad que le va bastante bien. Pero es una respuesta medio chocante para mi.

## EasyScreenCast

En fin, cuestión que alguien si le hizo caso al comentario y por eso existe la extensión [EasyScreenCast](https://extensions.gnome.org/extension/690/easyscreencast/). La use un rato, anda joya, y tiene muchas opciones para configurar.

![](https://extensions.gnome.org/extension-data/screenshots/screenshot_690_GFOsR6g.png)

En particular tuve unos problemas a la hora de grabar algo que no sea todo el escritorio (tengo dos monitores entonces es incomodo para usarlo). Pero rompía el escritorio (era necesario reiniciarlo) así que por el momento, no se si es lo que voy a usar. Capaz me pongo a hacer debug, pero por ahora es algo que tira para atrás el uso. Mi hipótesis es que al tener un Ubuntu viejo (18.04) la versión de Gnome con el plugin no están congeniando del todo bien.

En caso de encontrarle la vuelta, actualizo el post.
