def shuffle(array)
  # escribe el algoritmo que revuelva un array
  numbers = []

  while numbers.length <= array.length
    item = [array[rand(array.length)]]
    numbers << rand[array]    
  end
end


# Driver code:
array = (1..15).to_a

# Esto no deberá arrojar una excepción
10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
p true