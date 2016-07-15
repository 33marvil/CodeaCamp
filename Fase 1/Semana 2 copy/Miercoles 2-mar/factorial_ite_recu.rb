#Creacion del metodo factorial recursico
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


#Creacion del metodo factorial iterativo
def factorial_iterative(n)
  #Creacion de la variable inicial
  f = 1
  #hacer un para recorrer los numeros desde el 1 hasta el numero dado
  for i in 1..n
    #Cada vez que entre cambiara el valor y lo multiplicara por el siguiente
    f *= i
  end
  #regresar el valor de f
  f
end
p factorial_iterative(5)
p factorial_iterative(4)
p factorial_iterative(0)
p factorial_iterative(1)
p factorial_iterative(6)
p factorial_iterative(10)