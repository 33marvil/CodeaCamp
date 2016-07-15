#Varios Metodos en un String
puts name = "Aldo"
puts name.downcase.reverse
puts name.upcase
#-----------
#Linea de comentario
=begin
Aqui se pone 
todo el comentario
que yo quiera
jejejeje
=end
#Recibir datos de pantalla
print "What's your name? "
first_name = gets.chomp
first_name.capitalize!
print "what's your last name? "
last_name = gets.chomp
last_name.capitalize!
print "where are you from? "
city = gets.chomp
city.capitalize!
print "where are your state? "
state = gets.chomp
state.upcase!
puts "your names is #{first_name} #{last_name} you are from #{city}, #{state}"
=begin
	Para agregar un valor de una variable se usa=
	#{variable}
	
=end
#-----------------
# Ejercicio Defirni variables
title = "Programando en ruby"
description = "Practica Ruby"
number_of_likes = 5000

street = "Calle"
number = 40
state = "estado"
city = "ciudad"
zip = "No se que es zip" 
#-----------------
#Operaciones aritmeticas
num1 = 60 #Sin .0 se toma como integer
num2 = 7 #Para regresar un valor con decimales se le pone un= .0 
puts sum = num1 + num2
puts difference = num1 - num2
puts product = num1 * num2
puts quotien = num1 ** num2
puts modulus = num1 % num2
puts division = num1 / num2
#--------------
