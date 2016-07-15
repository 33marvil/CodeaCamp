#Llamar el metodo prime de la Doc de ruby
require 'prime'
#Creacion del metodo que pondra el numero en su forma prima

def numbers_primos(integer)
  #Usar el doc de ruby para pasar el numero a su forma prima
  Prime.prime_division(integer)
end

# numbers_primos(12)
# numbers_primos(5)
# numbers_primos(7)
# numbers_primos(1460009)
# numbers_primos(11)
# numbers_primos(13)
def prime_factor(integer)
  #empty array
  array_prime = [] 
  #recorrer dentro del array que regresa el prime
  # y sacar el valor [0]
  #despues hacer un ciclo para sacar el valor [0]
  #las veces que diga el x[1]
  numbers_primos(integer).each do |arr|
    for i in 1..arr[1]
      if arr[1] > 1
        array_prime << arr[0]
      else
        array_prime << arr[0]
      end
    end
  end
  p array_prime
end
prime_factor(5)
prime_factor(12)
prime_factor(120)
prime_factor(9)
prime_factor(34)






