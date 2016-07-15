class Sudoku
  def initialize(string)
    @string = string
    @counter = 0
    #board
  end

  def board
    #Meter el string a una variable en forma de array separando cada
    #numero
    @string.to_i
    arr = @string.scan(/./) 
    arr.each_with_index do |num, index|
      print num
      if index == 2 || index == 5 || index == 11 || index == 14 || index == 20 || index == 23 || index == 29 || index == 32 || index == 38 || index == 41 || index == 47 || index == 50 || index == 56 || index == 59 || index == 65 || index == 68 || index ==74 || index == 77
        print " | "
        elsif index == 26 || index == 53 || index == 80
          puts
          puts "- - - - - - - -"
      elsif index == 8 || index == 17 || index == 26 || index == 35 || index == 44 || index == 53 || index == 62 || index == 71 || index == 80
        puts 
      end
    end
  end

  def search_number
    #metodo para buscar que numero puede ir en X posicion
    @position_row = 0
    @position_col = 0
    @tablero = generate_array
    find_zeros 
  end

  def find_zeros
    string = ""
    #p @tablero[0][0]
    for row in 0..8
      #@tablero[@position_row][row]
        if @tablero[@position_row][row] == "0"
          @tablero[@position_row][row] = num_random
        end
    end
    p @tablero
  end

  def solve!
    #Metodo para resolver el tablero
  end
  #Metodo que generara un array de cada 3 elementos
  def generate_array
    array = @string.scan(/.../) 
    array.join.scan(/........./)
  end

  def num_random
    (1..9).to_a[rand(9)].to_s
  end
  def num_row
    var = @string.scan(/.../) 
    #p var
    fila = []
    string = ""
    for i in 0..2
      string << var[i]
      # p var[i].scan(/./)
    end
    # fila.map { |num| p num[] }
    # p fila
    fila = string.scan(/./)
    fila.map!  { |num| num.to_i }
    fila
  end

  def num_col
    nums = ""
    for col in 0..8
      for row in 0..8
        num << @string[col][row]
      end
    end
  end
end
#game = Sudoku.new('702806519100740230005001070008000002610204053200000100070400800064078005821503907')
#game.solve!
game = Sudoku.new('702836519196745238385921476458317692619284753237659184573492861964178325821563947')
#game.board#('702806519100740230005001070008000002610204053200000100070400800064078005821503907')
game.search_number
#game.board
# =>
# Game Solved!
# ---------------------
# 7 4 2 | 8 3 6 | 5 1 9 string = 702836519196745238385921476458317692619284753237659184573492861964178325821563947
# 1 9 6 | 7 4 5 | 2 3 8 
# 3 8 5 | 9 2 1 | 4 7 6 
# - - - - - - - - - - - 
# 4 5 8 | 3 1 7 | 6 9 2 
# 6 1 9 | 2 8 4 | 7 5 3 
# 2 3 7 | 6 5 9 | 1 8 4 
# - - - - - - - - - - - 
# 5 7 3 | 4 9 2 | 8 6 1 
# 9 6 4 | 1 7 8 | 3 2 5 
# 8 2 1 | 5 6 3 | 9 4 7 
# ---------------------