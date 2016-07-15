#Declaracion metodo shuffle
#Creara un array nuevo con los elementos al azar de el array que nos den
def shuffle(array)
  # escribe el algoritmo que revuelva un array
  #Array vacio para meter los numero aleatoriamente
  numbers = []
  #Declaracion while que correra hasta que la longitud del array "numbers"
  #Sea igual a la longitud del array que nos da el usuario
  while numbers.length <= array.length
    #Escogera un elemento al azar de el array cada vez que entre
    item = [array[rand(array.length)]]
    #Metera ese numero a el array numbers
    numbers << item
  end
  #Regresa el array ya lleno con los numero aleatorios
  numbers
end


# Driver code:
array = (1..15).to_a

# Esto no deberá arrojar una excepción
10.times do |variable|
    puts "Primer arreglo: #{shuffle(array)}"
    puts "segundo arreglo: #{shuffle(array)}"
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end

