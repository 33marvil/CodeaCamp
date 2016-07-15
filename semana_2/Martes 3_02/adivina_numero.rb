class NumberGuessingGame
  def initialize
  end
  
  def guess(num_usuario)
    num = rand(1..10)
    if num_usuario < num
      puts "Too low"
    elsif num_usuario > num
      puts "Too high"
    else
      "You got it!"
    end
  p num   
  end
end
# Pruebas

game = NumberGuessingGame.new

p game.guess(5) == "Too low"

p game.guess(8) == "Too high"

p game.guess(7) == "Too high"

p game.guess(6) == "You got it!"