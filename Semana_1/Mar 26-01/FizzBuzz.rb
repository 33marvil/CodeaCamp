#Fizzbuzz
def fizzbuzz (min, max)#Creacion del metodo
  fin = []
  (min..max).each do |num|  #Creacion de each para usar todos los elemento 
  if num % 15 == 0 #Creacion del if para asignar valores
    fin.push "FizzBuzz"
  elsif num % 5 == 0
    fin.push "Buzz"
  elsif num % 3 == 0 
    fin.push "Fizz"
  else
    fin.push(num) 
  end # fin If
  end#Fin each
   fin # regresar el valor del arreglo fin
end#fin metodo

# Pruebas

p fizzbuzz(3, 5) == ["Fizz", 4, "Buzz"]
p fizzbuzz(10, 15) == ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]