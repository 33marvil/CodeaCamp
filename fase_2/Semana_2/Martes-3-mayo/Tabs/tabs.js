$(document).ready(function () {
  // Put your JavaScript behavior here
  //Mostrara el primer tab
  $('#tab1').show();
  //Cada vez que le des click a algun elemento de clase tabs que sea un 'a'
  $('.tabs a').click(function() {
    //En el que estes le agregaras la clase activa y al anterior se la quitaras, con el siblings se pueden agregar y quitar clases al mismo tiempo.
    $(this).parent('li').addClass('active').siblings().removeClass('active');
    //Despues de agregar la clase oculta el tap en el que este en estaba
    $('.tab').hide();
    var link = $(this).attr('href');
    //y muestra el nuevo tap en el que este ahora.
    $(link).show();
  });  
});