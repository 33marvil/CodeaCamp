puts "Escribe una palabra"
#Array vacio
array = []
#Condicional para agregar las palabras
while true
  #como es diccionario pasa todo a string
  word = gets.chomp.to_s
  puts "escribe otra palabra(o presiona enter para finalizar)"
  #Termina si el usuario no ingresa ninguna palabra
  break if word == ""
  #agrega las palabras al array y las pone en forma de oracion
  array << word.capitalize
end
puts "Felicidades! Tu diccionario tiene #{array.length} palabras"
#Muestra el array en orden alfabetico
p array.sort