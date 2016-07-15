#Creacion de la clase
class NumberGuessingGame
  #Metodo que inicializa
  def initialize
  end
  #Metodo para preguntar el numero y adivinarlo
  def guess
    #variable que cada vez que se ejecuta cambia su valor
    num = rand(1..10)
    puts "Juego de adivina el numero en el que pienso"
    puts "¿En que numero entre el 1 y 10 estoy pensando?"
    #pasa la respuesta del usuario a integer
    num_usuario = gets.chomp.to_i
    #Condicion para saber si el numero ingresado es menor
    if num_usuario < num
      puts "Too low the number was #{num}"
    #condicion para saber si el numero ingresado es mayor
    elsif num_usuario > num
      puts "Too high the number was #{num}"
    #Condicion para saber si el numero ingresado es igual
    else
      "You got it! the number was #{num}"
    end
  end
end
#instancia de la variable game
game = NumberGuessingGame.new
#llamar al metodo guess de la clase NumberGuessingGame
game.guess
#Ciclo para saber si quiere jugar el usuario de nuevo
while true || false
  puts "¿Quieres volver a jugar?"
  answer = gets.chomp.downcase
  #Si el usuario no quiere jugar se sale del ciclo y acaba
  break if answer == "no"
  game.guess 
end

