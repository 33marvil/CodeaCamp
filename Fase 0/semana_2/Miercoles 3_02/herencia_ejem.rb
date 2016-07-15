class NumberGuessingGame
  def initialize(number)
    @number = number
  end
  def guess
    number = (1..10)
    puts "¿En que numero entre el 1 y 10 estoy pensando?"
    num_usuario = gets.chomp
    if num_usuario < num
      puts "Too low"
    elsif num_usuario > num
      puts "Too high"
    else
      "You got it!"
    end    
  end
end
# Pruebas

game = NumberGuessingGame.new

p game.guess(5) == "Too low"

p game.guess(8) == "Too high"

p game.guess(7) == "Too high"

p game.guess(6) == "You got it!"