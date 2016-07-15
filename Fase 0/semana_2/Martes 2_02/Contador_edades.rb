#Programa para contar el numero de personas en un rango
def total_between_age(array, min_age, max_age)
  #Contenido del metodo
  #Creacion de un arreglo vacio
  arr = []
  #Iterador en el arreglo
  array.each do |age|
    #Condicion para meter edades que cumplan la condicion al array
    arr << age if min_age <= age && age <= max_age 
  end #end each
  #Regreso
  arr.length
end #end total_between
# Pruebas
p total_between_age([10, 20, 30, 40, 50, 60], 20, 40) == 3
p total_between_age([18, 19, 20, 23, 24, 27], 20, 27) == 4