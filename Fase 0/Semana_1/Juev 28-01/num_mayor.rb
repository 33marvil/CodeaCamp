def max(array)
  #method actions
  array.sort!#ordena los numeros de menor a mayos
  array[0]#ya ordenados regresa el ultimo numero osea el mayor
end#end array

# Pruebas
p max([-20, -10, 0, 10, 20]) == 20
p max([1, 2, 3, 4, 5]) == 5
p max([5, 4, 3, 2, 1]) == 5