# TODO: Refactoriza buscando elegancia 
def shout_backwards(string)
  # all_caps  = string.upcase
  # backwards = all_caps.reverse
  # result    = backwards + "!!!"
  result = string.upcase.reverse + "!!!"

  result
end


# AYUDAME: Refactoriza buscando elegancia 
def squared_primes(array)
  find_all_num(array).map{ |p| p * p}
  #array.find_all{|x| (2..x-1).select(){|i| x % i == 0 }.count == 0 }.map{|p| p*p}
end
#Metodo que separa el metodo completo 
#los parametros cambian por los que se usaran
def find_all_num(array)
  array.find_all{ |x| select_num(x).count == 0 }
end

def select_num(num)
  (2..num-1).select(){ |i| num % i == 0 }
end






# Driver code... no edites este texto. En la consola esto deberá imprimir puros trues
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]