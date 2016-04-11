
var Carrousel = function () {}

Carrousel.prototype.setFirstItem = function () {
    carrousel.activeItem = $("#carrusel ul li:first");
}

Carrousel.prototype.setLastItem = function () {
    carrousel.activeItem = $("#carrusel ul li:last-child");
}

Carrousel.prototype.getItems = function () {
    return carrousel.items;
}

Carrousel.prototype.changeItem = function () {

    var newPosition = carrousel.activeItem.position().left;

    $("#carrusel ul").animate({
        left : - newPosition
    })
}

Carrousel.prototype.nextItem = function () {
    carrousel.activeItem = carrousel.activeItem.next();
    if (carrousel.activeItem.length == 0)
        carrousel.setFirstItem()
    carrousel.changeItem();
}

Carrousel.prototype.prevItem = function () {
    carrousel.activeItem = carrousel.activeItem.prev();
    if (carrousel.activeItem.length == 0)
        carrousel.setLastItem()
    carrousel.changeItem();
}

Carrousel.prototype.inicializar = function() {
    carrousel.items = $("#carrusel ul li");
    carrousel.activeItem = $("#carrusel ul li:first");
}

var carrousel = new Carrousel();

window.onload = function() {
    carrousel.inicializar();

    $('#right-arrow').click(carrousel.nextItem);
    $('#left-arrow').click(carrousel.prevItem);
}
