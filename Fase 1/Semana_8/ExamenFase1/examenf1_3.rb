$distance = 100
#RaceCar class
class RaceCar
  attr_accessor :nameCar, :velocity
  def initialize(nameCar, velocity)
    @nameCar = nameCar
    @velocity = velocity
  end

  #método para obtener velocidad promedio
  #...
  def average_speed
    @velocity.to_f / $distance
  end

  #método que muestra nivel de cada race car
  #...
  def level_car
    level = ""
    if @velocity <= 100
      level = "Principiante"
    elsif @velocity <= 200
      level = "Medio"
    elsif @velocity <= 300
      level = "Normal"
    elsif @velocity <= 400
      level = "Experto"
    elsif @velocity <= 500
      level = "Maestro"
    else
      level = "Challenger"
    end            
    level    
  end

end

#Team class
class Team 
  attr_accessor :arrayCars
  def initialize(arrayCars)
    @arrayCars = arrayCars
    #addCar(@arrayCars)
  end

  #método para agregar nuevo race car
  #...
  def addCar(car, array)
    arrayCars = []
    array.each do |raceCar|
      arrayCars << raceCar
    end
    arrayCars
  end

  #método para calcular promedio de velocidad del equipo
  #...  
  def average_speed_of_team#(arrayCars)
    vel = 0
    @arrayCars.each do |car|
      vel += car.velocity
    end
    "The average speed is: #{vel / $distance.to_f} m/s"
  end

end

#método para buscar race car
#...
def search(car, arrayCars)
  #p arrayCars.arrayCars
  if (arrayCars.arrayCars).find{ |i| i.nameCar == car } 
    "#{car} is a racer"
  else
    "#{car} isn't a racer"
  end
end


#método para generar la tabla
#...
def show_cars(arrayCars)
  puts "|\tName\t|\tNivel\t|"
  puts "-" * 33
  arrayCars.arrayCars.each do |car|
    if (car.nameCar).length <= 6
      puts"|\t#{car.nameCar}\t|#{car.level_car}\t|"
    else
      puts"|    #{car.nameCar}\t|#{car.level_car}\t|"
    end
  end
end

#método para mostrar nombre y nivel del race car
#...


#instancias de RaceCar
#...
car1 = RaceCar.new("Force", 400)
car2 = RaceCar.new("Power", 100)
car3 = RaceCar.new("Passwater", 500)
car4 = RaceCar.new("Banjo", 600)
car5 = RaceCar.new("Duck", 800)
car6 = RaceCar.new("AldoCar", 1000)


#tests

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)

#test para buscar race car en equipo team_one
p search("Power", team_one) == "Power is a racer"

#calculate average speed of team
p team_one.average_speed_of_team
show_cars(team_one)
#ej. 10.66 