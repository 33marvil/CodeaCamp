def median(array) #creation of median method
  #array.inject{|sum, x| sum += x} / array.size.to_s
  if array.size % 2 == 0 #Definir el numero a la mitad del arreglo
   var = (array[(array.size/2)] + array[(array.size/2)-1]).to_f / 2
   #Operacion que suma los 2 numeros a la mitad y los divide entre 2
  else #Si es impar solo recoge el numero que esta a la mitad
     array[array.size / 2]
  end
end #end array
#Pruebas
p median([4, 5, 6]) == 5
p median([-3, 0, 3]) == 0
p median([2, 3, 4, 5]) == 3.5
p median([1, 8, 10]) == 8
