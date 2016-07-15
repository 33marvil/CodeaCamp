#Metodos String
my_name = "AlDo Marqueza"
puts my_name.upcase #Metodo para pasar a MAYUSCULAS
puts my_name.length #Metodo para contar el numero de caracteres de un String
puts my_name.downcase #Metodo para pasar a minustulas
puts my_name[1] #Toma la letra que esta en la posicion pedida
puts my_name.capitalize!#Pone la primera letra en mayuscula y lo demas minuscula
puts my_name.chr #Regresa el primer caracter de la String
puts my_name.count "d", "o"#Dice cuantas letas escogidas hay
puts my_name.empty?#Regresa valor booleano si esta vacio true si no false
puts my_name.sub(/[aeiou]/, '*')#Sustituye las letras por el valor que quieras
puts my_name.gsub(/[eo]/, 'e'=>4, 'o'=>'&')#Sustituye las letras deseadas por las deseadas
puts my_name.include? "al"#regresa valor booleano si hay el valor dado
puts my_name.include? "ld"#igual que arriba
puts my_name.reverse #Pone el texto escrito al reverse
puts my_name.split(/ /) #pone los valores entre parentesis separados por espacio
puts my_name.strip #Quita los espacios en blanco