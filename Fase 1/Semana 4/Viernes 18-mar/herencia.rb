#Herencia in ruby
#Example
=begin
  
class Vehicle
  def has_wheels?
    true
  end
end

class Bike < Vehicle
end

bike = Bike.new
puts bike.has_wheels?
=> true

=end
class Vehicle
  #Si se va a dejar acceder a los valores ya no se necesita crear el metodo 
  #el attr permite que se vean sin tener que hacer DRY
  attr_reader :number_of_wheels, :color, :number_of_gears
  def what_am_i?
    # Este método va a ser utilizado por varias clases y deberá regresar 
    # el nombre de la clase desde la cual se corrió.
    # ej.
    # bocho = Car.new
    # bocho.what_am_i? => Car
    puts self
  end

  def age!
    true
  end

end
#Class Morized que hereda de vehiculo y podra acceder a todos los valores de vehicle
class Motorized < Vehicle
  #dejar ver los valores de las siguientes variables
  attr_reader :has_motor, :tank_size, :refuel

end
#class Motorbkie que hereda de motorized y contendra todo lo que tenga Motorized
#hasta su variables heredadas
class Motorbike < Motorized 
end
#class car que hereda de Motorized
class Car < Motorized
end
#class bicycle que hereda de vehicle
class Bicycle < Vehicle
  #class para saber cuantos engranes tiene la bibicleta
  def initialize(number_of_gears)
    #darle valor a la variable number_of_gears
    @number_of_gears = number_of_gears
  end
end
#class skateboard que hereda de vehicle
class Skateboard < Vehicle
end
# DRIVER CODE
moto = Motorbike.new
car = Car.new
bike = Bicycle.new(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.what_am_i?} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age!}"
  puts "\n\n"
end