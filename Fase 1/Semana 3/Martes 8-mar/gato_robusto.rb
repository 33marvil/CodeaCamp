# abecedario = ('A'..'Z').last(20)
# que_sera = Array.new(3) { abecedario.pop(2) }
# gato = [ ["X", "X", "O"],
#            ["O", "X", "O"],
#            ["O", "O", "X"] ]
#Metodo para generar las fichas del juegos "x" y "o"
def generate(value, times, array)
  #las veces que salga se metera ese valor a el array
  times.times do 
     array << value
  end
  #mezcla el array
  array.shuffle
end
#metodo para crear el tablero de gato
def gato
  #array con las fichas que se meteran
  arr = ["X","O"]
  #escogera una de las 2 fichas al azar
  azar = arr.shuffle
  #Toma el primer valor del array azar
  value = azar[0]
  #array vacio para meter los valores
  gatos = []
  #llama al metodo generate y le da los valores que estan dentro de gato
  generate(value, 5, gatos)
  #si el valor es x lo crea 5 veces 
  if value == "X"
    # y genera el contrario  4 veces
    generate("0", 4, gatos)
  #Si el que salio fue "O" lo crea 5 veces
  else
    #Y crea "x 4 veces"
    generate("X",4, gatos)
  end
end


#genera el tablero de gato ya con los elementos mezclados
def crear_tab(arra)
  #itera dentro del metodo gato que tiene el array mezclado de los elementos
  gato.each_with_index do |token, index|
    #suma 1 al index para que empieze desde el 1 al 9
    index +=1
    #imprime el valor del token (la ficha "x" o "o")
    print token
    #a menos que estas condiciones sean verdad
    unless index == 3 || index == 6 || index == 9
      #imprime una parte del table a la derecha de cada token
      print " | "
    end
    #Cada vez que llegue al token en la pocision 3
    if index %3 == 0 && index != 0
      #Hace un salto de linea
      puts
      #pondra abajo de cada renglon 10 "-" para separar
      #Exepto en la ultima linea
      if index < 9
        print "-" * 10
        puts
      end
    end
  end

end

#p gato
answer = ""
while answer != "no"
  puts "Quieres jugar gato?(si o no)"
  answer = gets.chomp
  answer.downcase
  unless answer == "si" || answer == "no"
    puts "Solo escribe si o no"
  else
    if answer == "si"
      crear_tab(gato)
    else
      puts "Gracias por jugar"
      break
    end
    #puts "dentro del else"
  end
end


