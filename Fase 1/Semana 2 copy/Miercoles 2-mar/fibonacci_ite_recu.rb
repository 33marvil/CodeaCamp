#Creacion del metodo para obtener el valor del fibonacci
def fibonacci_recursive(int_positive)
  #Recibe como parámetro un entero positivo 
  #(n) y regresa el n número en la serie de Fibonacci.
  if int_positive < 2
    int_positive
  #algoritmo para poder encontrar el resultado
  else
    fibonacci_recursive(int_positive - 1) + fibonacci_recursive(int_positive - 2)
  end  
end  

# Pruebas

# p fibonacci_recursive(2) #== 1

# p fibonacci_recursive(3) #== 2

# p fibonacci_recursive(4) #== 3
# p fibonacci_recursive(5) #== 5
# p fibonacci_recursive(10) #== 55


def fibonacci_iterative(int_positive)
  f = 0
  f1 = 1
  f2 = 1
  if int_positive == 1 || int_positive == 2
    f = 1
  elsif int_positive == 0
    f = 0
  else
    for i in 3..int_positive
      f = f2 + f1
      f1 = f2
      f2 = f
    end
    f
  end
end
p fibonacci_iterative(2) 
p fibonacci_iterative(3) 
p fibonacci_iterative(4) 
p fibonacci_iterative(5) 
p fibonacci_iterative(10) 
p fibonacci_iterative (1)
p fibonacci_iterative (17)