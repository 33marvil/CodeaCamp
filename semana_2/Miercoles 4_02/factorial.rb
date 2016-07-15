#Creacion del metodo
def factorial(int_positive)
  #Si el numero es diferente de cero entra
  if int_positive != 0 
    #Multiplica todos los numeros desde el uno hasta
    #el que ingresaron
    (1..int_positive).reduce(:*)
  else
    #Si el numero es 0 regresa 1
    1
  end#end if
end#end factorial

# Pruebas

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720