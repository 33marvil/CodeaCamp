#String mas largo en una Lista
def shortest(array)#Creacion del metodo
  #Acciones del metodo
  size = array[0].length #Variables vacias que cambiaran su valor 
  strong = ""
  array.each do |word| #Metodo que revisara cada elemento del array
    if word.length <= size #Metodo que revisara el tamaño de las palabras
      size = word.length
      strong = word     
    end#End if
  end#End each
  strong
end#End longest

# Pruebas
p shortest(['uno', 'dos', 'tres', 'cuatro', 'cinco']) == (["uno", "dos"])
p shortest(['gato', 'perro', 'elefante', 'jirafa']) == (["gato"])
p shortest(['verde', 'rojo', 'negro', 'morado']) == (["rojo"])
