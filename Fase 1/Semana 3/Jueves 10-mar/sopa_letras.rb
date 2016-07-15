# Palabras y Plantillas de Tableros
prueba1 = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
prueba2 = [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
prueba3 = [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]



#Class tablero to creat and return the board and the words
class Board
  #cada vez que se llame a la clase se mostrar el tablero y recivira
  #un nested array con las palabras y el tablero a crear
  def initialize(array)
    #darle a prueba1 valor de el array que mande el usuario
    #y declararlo como variable de instancia
    @prueba1 = array
    #metodo que correra siempre que se inicialize
    complete_board!
  end
  #Mostrara el tablero en pantalla y cada 5 renglones
  #hace un salto de linea
  def to_s
    #"try to print a board, what does this method do?"
    #itero dentro del array y pone un salto de linea siempre
    #que pasen 5 letras en un renglon
    @array.each_with_index do |letter, index|
      print letter
      if index == 4 || index == 9 || index == 14 || index == 19 || index == 24 || index == 29 || index == 34 
        puts
      end
    end
    #Salto de linea para que cuando imprima el tablero de un salto
    puts
    puts
    puts "Encontre estas palabras ;)"
    puts 
  end
#Metodo para saber si las palabras estas de forma tramposa
  # def find_word_trap
  #   @words = @@prueba1[0].join("")
  #   p var = @words.scan(/./)
  #   var.each do |letter|
  #     p @array.include? letter
  #   end
  #   #p @array.include? var
  #   #p @array.join(" ")#.split

  #   # for i in 0..@words.length
  #   #   @array.join!
  #   #   @array.include?(@worsd[0])
  #   # end
  # end

  #separa las palabras cada 5 letras
  def search_words
    #array que sera igual a el array separado
    arr = @array.join
    #array que sera cada palabra separada cada 5 letras
    @var = arr.scan(/...../)
    p @var
  end

  #Iterara y llamara a los metodos para buscar las palabras
  def iteration
    #llama del metodo search_words
    search_words
    #array con las palabras que se buscaran en la sopa
    words_to_search = @prueba1[0]
    #contador iniciado en 0
    #que aumentara cuando encuentre o no encuentre 
    #una palabra despues de buscarla
    @counter_row = 0
    #recorre desde la primera hasta la ultima palabra
    for i in 0..words_to_search.length-1
      #llama al metodo find_words_row con el parametro de 
      #las palabras que buscara
      find_words_row(words_to_search)
      #aumenta el contador despues de que el metodo 
      #haya terminado de buscar
      @counter_row += 1
    end
  end

  #Buscara palabras cada columna
  def find_words_column(words_to_search)
    #declara string vacio que sera modificado
    string = ""
    #ciclo para recorrer en las columnas
    for col in 0..4
      #ciclo para recorrer en las filas
      for row in 0..7
        #meter el valor en la pocision que esten
        #los ciclos a el string
        string << @var[row][col]
      end
      #si el string incluye la palabra que busca el counter
      if string.include? words_to_search[@counter_row]
        #imprime que palabra la encontro y en que pocision
        p "Encontre: #{words_to_search[@counter_row]} en columna"
        #despues de encontrarla deja de buscar palabras en fila
        break
      #si el string incluye la palabra pero al reves
      elsif string.include? words_to_search[@counter_row].reverse
        #imprime la palabra encontrada
        p "Encontre: #{words_to_search[@counter_row]} en columna inversa"
        #despues de encontrarla rompe el ciclo
        break
      else
        #si no encontro ninguna palabra en las columnas
        #Llama al metodo que buscara palabras en diagonal
        find_words_diagonal(words_to_search) if col == 4
      end
      #Regresa el string vacio cada vez que se llene con las letras
      #deseadas
      string = ""
    end
  end

  #metodo para buscar palabras en diagonal
  def find_words_diagonal(words_to_search)
    #declarar string vacio que se modificara
    string = ""
    #ciclo que recorrera primero en las filas
    for row in 2..7
      #creacion de un contador que sera decrementado
      decrease = row
      #ciclo que recorre en pocision de diagonal
      for sec in 0..row
        #si el sec es menor a 4
        if sec <  4
          #mete las letras en el string
          string << @var[decrease][sec]
        #cuando el sec es mayor o = el sec siempre sera 4
        else
          #estable el sec como 4
          sec =  4
          #mete las palabras en el string
          string << @var[decrease][sec]
        end
        #disminuir el contador 
        decrease -= 1
      end
      #si el string ya lleno incluye la palabra
      if string.include? words_to_search[@counter_row]
        #imprime la palabra e imprime en que pocision esta
        p "Encontre: #{words_to_search[@counter_row]} en diagonal"
        #cuando la encuentre rompe el ciclo
        break
      #si el string es igual a la palabra al reves
      elsif string.include? words_to_search[@counter_row].reverse
        #imprime la palabra encontrada y en que pocision esta
        p "Encontre: #{words_to_search[@counter_row]} en diagonal inversa"
        #rompe cuando encuentre la palabra
        break
      #si no son iguales
      else
        #cuando la fila llegue a 7
        if row == 7
          #imprime la palabra que busca y dice que no la encontro
          p "no esta + #{words_to_search[@counter_row]}" 
        end
      end
      #regresar el string a string vacio
      string = ""
    end
  end

  #metodo para buscar las palabras en filas
  def find_words_row(words_to_search)
    #string vacio que sera modificado
    string = ""
    #ciclo que recorrera entre las filas
    for row in 0..7
      #ciclo que recorrera en las columnas
      for col in 0..4
        #mete las letras a el string
        string << @var[row][col]
      end
        #si el string incluye las letras de la palabra
        if string.include? words_to_search[@counter_row]
          #imprime la palabra y en donde la encontro
           p "Encontre: #{words_to_search[@counter_row]} en fila"
          #si encuentra palabra rompe
          break
        #si el string tiene las letras de la palabra al reves
        elsif string.include? words_to_search[@counter_row].reverse
          #imprime la palabra y en que forma la encontro
          p "Encontre: #{words_to_search[@counter_row]} en fila inversa"
          #rompe cuando encuentre palabra
          break
        #si no encuentra
        else
          #llama al metodo find_words_column cuando la fila sea la ultima
          find_words_column(words_to_search) if row == 7
        end
        #regresa el string a vacio
        string = ""
    end
  end


  private
  #Metodo para terminar el tablero
  def complete_board!
    #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.end
    #separa el string en un array de letra en letra
    @array = @prueba1[1].split("")
    #itera dentro de cada letra del array
    @array.each do |letter|
      #si la letra es X
      if letter == "X"
        #cambia la letra por una letra aleatoria entre la a y la z
        letra = ("A".."Z").to_a[rand(26)]
        #Para que regrese el array cambiado debe ser metodo destructivo SIEMPRE
        #que se quiera cambiar
        #Cambia las letras que sean X por una letra aleatoria
        #de el array letra
        letter.gsub!(/X/) { letra }
      end
    end
    #regresar el array ya cambiado
    @array
  end
end
#Pruebas que entrara a la clase board
prueba1 = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
prueba2 = [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
prueba3 = [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
# 

board = Board.new(prueba1)
board.to_s
board.iteration
#board.iteration
