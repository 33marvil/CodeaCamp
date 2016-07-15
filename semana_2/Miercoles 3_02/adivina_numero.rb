#Creacion de la clase
class NumberGuessingGame
  #Metodo que inicializa
  def initialize
    guess
  end
  #Metodo para preguntar el numero y adivinarlo
  def guess
    num = rand(1..10)
    #variable que cada vez que se ejecuta cambia su valor
    puts "Juego de adivina el numero en el que pienso"
    #Condicion para saber si el numero ingresado es menor
    follow = true
    while follow == true
       puts "¿En que numero entre el 1 y 10 estoy pensando?"
    #pasa la respuesta del usuario a integer
      num_usuario = gets.chomp.to_i
      if num_usuario < num
        puts "Too low "
    #condicion para saber si el numero ingresado es mayor
      elsif num_usuario > num
        puts "Too high "
      else 
        puts"You got it! the number was #{num}" 
        follow = false
      end
    end
  end
end
#instancia de la variable game
game = NumberGuessingGame.new
#llamar al metodo guess de la clase NumberGuessingGame

