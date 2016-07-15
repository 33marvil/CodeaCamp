# Palabras y Plantillas de Tableros
prueba1 = [["POEMA", "CANCION", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
prueba2 = [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
prueba3 = [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]
# array = prueba1[1].split("")
# array.length
# array.each_with_index do |letter, index|
#   print letter
#   if index == 4 || index == 9 || index == 14 || index == 19 || index == 24 || index == 29 || index == 34
#     puts
#   end
# end



class Board
# You should put here the given boards templates
# @@boards_templates =  
@@prueba1 = [["CANCION", "POEMA", "RONDAS", "RIMAS"],"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
@@prueba2 = [["MANGO", "SANDIA", "MELON", "PLATANO"],"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"]
@@prueba3 = [["ROJO", "VERDE", "AZUL", "NEGRO"],"OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"]

  def initialize
    complete_board!
  end

  def to_s
    #"try to print a board, what does this method do?"
    #array = @@prueba1[1].split("")
    
    @array.each_with_index do |letter, index|
      print letter
      if index == 4 || index == 9 || index == 14 || index == 19 || index == 24 || index == 29 || index == 34 
        puts
      end
    end
    #Salto de linea para que cuando imprima el tablero de un salto
    puts
  end

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
  def search_words
    @array
    arr = @array.join
    @var = arr.scan(/...../)
  end

  def iteration
    search_words
    words_to_search = @@prueba1[0]
    p words_to_search
    p @var
    @counter_row = 0
    find_words_row(words_to_search)
  end

  def find_words_column(words_to_search)
    string = ""
    for col in 0..4
      for row in 0..7
        string << @var[row][col]
        #p string
      end
      if string.include? words_to_search[@counter_row]
        p "Encontre: #{words_to_search[@counter_row]}"
        break
      elsif string.include? words_to_search[@counter_row].reverse
        p words_to_search[@counter_row]
        break
      else
        p "no esta" if col == 4
      end
      string = ""
    end
   
  end

  def find_words_row(words_to_search)
    for row in 0..4
      #p @var[row]
      #words_to_search[@counter_row]
      if @var[row] == words_to_search[@counter_row]
         @var[row]
        break
      elsif @var[row] == words_to_search[@counter_row].reverse
        @var[row]
        break
      else
        find_words_column(words_to_search) if row == 4
      end
    end
  end


  private

  def complete_board!
    #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.end
    @array = @@prueba1[1].split("")
    @array.each do |letter|
      if letter == "X"
        letra = ("A".."Z").to_a[rand(26)]
        #Para que regrese el array cambiado debe ser metodo destructivo SIEMPRE
        #que se quiera cambiar
        letter.gsub!(/X/) { letra }
      end
      #print letter
    end
    @array
  end
end

    board = Board.new
    board.iteration