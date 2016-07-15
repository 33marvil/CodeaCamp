#Creacion del metodo para saber si el numero 
#es un cubo perfecto
def dudeney_number?(number)
  #variable que sumara cada digito de el numero 
  #que el usuario pase
  num = number.to_s.chars.map(&:to_i).reduce(:+)
  #Sacar el cubo de la variable anterior
  cube = num **3
  #Si el cubo y la suma de los digitos son iguales
  #Regresa true
  if cube == number 
    true
  #Si no son iguales regresa false
  else
    false
  end
end

# Pruebas

p dudeney_number?(1) == true
p dudeney_number?(125) == false
p dudeney_number?(512) == true
p dudeney_number?(1728) == false
p dudeney_number?(5832) == true