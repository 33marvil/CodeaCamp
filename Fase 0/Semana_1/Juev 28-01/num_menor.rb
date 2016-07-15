def min(array)#Creacion del metodo
  #method actions
  array.sort!#ordena los numeros de menor a mayos
  array[0]#ya ordenados regresa el primer numero osea el menor
end#end array

# Pruebas
p min([-20, -10, 0, 10, 20]) == -20
p min([1, 2, 3, 4, 5]) == 1
p min([5, 4, 3, 2, 1]) == 1