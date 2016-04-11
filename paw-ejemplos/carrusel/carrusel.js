
var Carrousel = function () {
    this.items = $("#carrusel ul li");
    this.activeItem = $("#carrusel ul li:first");
}

Carrousel.prototype.setFirstItem = function () {
    this.activeItem = $("#carrusel ul li:first");
}

Carrousel.prototype.setLastItem = function () {
    this.activeItem = $("#carrusel ul li:last-child");
}

Carrousel.prototype.getItems = function () {
    return this.items;
}

Carrousel.prototype.changeItem = function() {
    console.log('Nuevo Item');
    console.log(this.activeItem);
}

Carrousel.prototype.nextItem = function (event) {
    console.log(event);
    carrousel.activeItem = carrousel.activeItem.next();
    if (carrousel.activeItem == undefined)
        carrousel.setFirstItem()
    carrousel.changeItem();
}

Carrousel.prototype.prevItem = function () {
    this.activeItem = this.activeItem.prev();
    if (this.activeItem == undefined)
        this.setLastItem()
    this.changeItem();
}

var c = new Carrousel();

window.onload = function() {
    $('#right-arrow').bind('click', {carrousel: c}, function (event) {
        var data = event.data;
        alert(c);
    })
    $('#right-arrow').click(c.nextItem);
    $('#left-arrow').click(c.prevItem);
}
