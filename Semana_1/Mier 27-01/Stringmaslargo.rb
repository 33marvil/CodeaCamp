#String mas largo en una Lista
def longest(array)#Creacion del metodo
  #Acciones del metodo
  size = 0 #Variables vacias que cambiaran su valor 
  strong = ""
  array.each do |word| #Metodo que revisara cada elemento del array
    if word.length > size #Metodo que revisara el tamaño de las palabras
      size = word.length
      strong = word      
    end#End if
  end#End each
  strong
end#End longest

# Pruebas
p longest(['gato', 'perro', 'elefante', 'girafa']) == "elefante"
p longest(['verde', 'rojo', 'negro', 'morado']) == "morado"


