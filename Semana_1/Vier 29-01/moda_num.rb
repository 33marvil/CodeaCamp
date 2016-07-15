#Metodo para saber cual es la moda en una serie de numeros(array)
def mode(array)#Creacion del metodo
  #array vacio
  arr = []
  #Hash vacio
  hash = Hash.new(0)
  #Recorre entre valores y suma 1 cada vez que se repita
  array.each { |num| hash[num] += 1 }
  #Añade al arreglo el key con el value mas grande
  hash.each do |key, value|
    arr << key if hash.values.max  == value
  end
  #Regresa el array con el key que mas veces que repitio
  arr  
end#End mode
  
# Pruebas
p mode([1, 2, 2, 3]) == [2]
p mode([1, 2, 2, 3, 3, 4]) == [2, 3]
p mode([1, 2, 3]) == [1, 2, 3]
p mode([0, 1, 2, 3, 4, 0]) == [0]

