$(window).on("scroll", function () {
  // Aquí deberás escribir la lógica que modificará la barra
  var navHeight = $( window ).height() - 930;
       if ($(window).scrollTop() > navHeight) {
         $('#nav').addClass('fixed');
       }
       else {
         $('#nav').removeClass('fixed');
       }$
  
});
