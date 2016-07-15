#Creacion del metodo factorial
#Recibe como parámetro un entero 
#positivo y regresa el factorial.
def factorial(int_positive)
  #Evalua el parametro para obtener el factorial
  if int_positive != 0 
    #Multiplicacion de valores en caso de ser != 0
    (1..int_positive).reduce(:*)
  else
    #valor en caso de ser 0
    1
  end
end

# Pruebas

p factorial(5) == 120
p factorial(4) == 24
p factorial(0) == 1
p factorial(1) == 1
p factorial(6) == 720