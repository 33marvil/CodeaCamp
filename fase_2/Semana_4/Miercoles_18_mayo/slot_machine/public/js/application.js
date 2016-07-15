$(document).ready(function() {
  //Creacion de la peticion para guardar los valores que el usuario haya puesto en el text area
  $( "form" ).on("submit", function(event) {
    //retener la informacion hasta que acabe este proceso
    event.preventDefault();
    //Guardar los valores que el usuario haya ingresado con el serialize solo se guardaran los valores y no todo el form
    var form_data = $(this).serialize();
    console.log(form_data);
    //Crear el Ajax sobre el url que se quiere recargar y pasarle los valores que el usuario haya dado
    //Con el function(data) se hara el callback de el metodo y se guardaran los valores que haya regresado el metodo del controller
    $.post('/rolls', form_data, function(data) {
      //Agregar a el div abuela lo que contenga ahora data y lo sobreescriba cada vez
      $("#die").html(data);
    });
  });  
});
