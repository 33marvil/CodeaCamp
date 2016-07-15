#Creacion del metodo para obtener el valor del fibonacci
def fibonacci(int_positive)
  #Recibe como parámetro un entero positivo 
  #(n) y regresa el n número en la serie de Fibonacci.
  if int_positive < 2
    int_positive
  #algoritmo para poder encontrar el resultado
  else
    fibonacci(int_positive - 1) + fibonacci(int_positive - 2)
  end  
end  

# Pruebas

p fibonacci(2) #== 1
p fibonacci(3) #== 2
p fibonacci(4) #== 3
p fibonacci(5) #== 5
p fibonacci(10) #== 55