# ¿Qué tipo de datos son cada una de las siguientes
# variables?
# ¿De que clase es cada uno y como lo puedes comprobar?
v = 5
w = "hola"
x = 5.0
y = [1, 2, 3]
z = {a: 1, b: 2, c: 3}
# Respuesta 
# v = integer
# w = String
# x = float
# y = array
# z = hash



# Obtén el valor del segundo elemento de la lista 
#{}`fruits` utilizando código. Y cambia el tercer
# valor de la lista por una fruta diferente.
fruits = ["apple", "orange", "peach"]
# Respuesta 
p fruits [1] #Agarra el 2 valor
p fruits [2] = "cucumber" #Cambia el valor de la 
#tercera fruta
# Obtén el último elemento de la lista `foods`.
foods = ["hamburger", "donut", "pizza", "chilaquiles"]
# Respuesta 
p foods[-1] #Toda el ultima valor 
# Añade un elemento más al final de la lista `gadgets`.
gadgets = ["smartphone", "laptop", "tablet"]
# Respuesta 
gadgets << "iwatch" #Agrega este elemento a el arreglo
p gadgets



#Hashes
#Crea la variable my_hash e inicialízala a un Hash vacío.
my_hash = Hash.new
#Crea la variable translations e inicialízala a un 
#Hash con 3 palabras en inglés con su correspondiente 
#traducción a español.
translations = {water: "agua", red: "rojo", book: "libro"}
#A la variable translations del ejercicio anterior 
#agrégale una palabra más.
translations[:exit] = "salida"
#Lee el value de alguna de las palabras de translations 
#y asígnalo a la variable spanish_word.
spanish_word = []
translations.each { |key, value| spanish_word << value}
p spanish_word



#If/else
#Crea el método number_sign que nos diga si un número 
#es negativo o positivo. Si el número es negativo 
#regresa el string "Negative", y si es positivo "Positive".
def number_sign(number)
  if number >= 0
    p "The number is Positive"
  else
    p "the number is Negative"
  end
end

number_sign(10)
number_sign(-12)



#Loop
#Crea el método print_double que reciba un arreglo 
#de números, e imprima el doble de cada número.
def print_double(array_numbers)
  #cada numero dentro del arreglo sera multiplicado por 2
  array_numbers.each{|number| p number * 2}
end
print_double([1,2,3,4,5,6,7,8,9])
#Crea el método double_array muy parecido al 
#ejercicio anterior, con la diferencia que no 
#imprime los número sino que regresa un nuevo arreglo 
#con los elementos multiplicados por 2.
def double_array(array_numbers)
  #Arreglo vacio para meter el doble del numero
  arr = []
  #iterar en cada numero para multiplicarlo por 2 y 
  #meterlo al array
  array_numbers.each{|number| arr << number * 2}
  #impresion del array
  p arr
end
double_array([1,2,3,4,5,6,7,8,9])



# Métodos
#Crea el método odd_or_even, que recibe dos argumentos: 
#min y max. Regresa un arreglo intercambiando cada 
#elemento del rango por el string "par" o "non" según 
#lo que son. ruby odd_or_even(5, 10) => ["non", "par", "non", "par", "non", "par"]
def odd_or_even(min, max)
  arr=[]
  (min..max).each do |num|
    if num % 2 == 0
      arr << "par"
    else
      arr << "impar"
    end
  end
  p arr
end
odd_or_even(5,10)



#Sintaxis de Clases
#Crea una clase Dog y agrega el código necesario para 
#hacer pasar las pruebas.
class Dog
  attr_accessor :name
  attr_reader :date_of_birth, :breed
  attr_writer :breed
  def initialize(name, date_of_birth, breed)
    @name = name
    @date_of_birth = date_of_birth
    @breed = breed
  end 
end
# Pruebas
fido = Dog.new("Fido","02/02/2002","Bulldog")
p fido.name == "Fido"
p fido.date_of_birth == "02/02/2002"
fido.name = "Snoopy"
fido.breed = "Beagle"
p fido.name == "Snoopy"
p fido.breed == "Beagle"


#Clases
#Crea la clase rectangle, con los atributos height y
# width. Y crea un método que calcule el perímetro y 
#otro método que calcule el área del rectángulo. 
#Permite que se puedan leer y modificar los valores 
#de height y width después de su creación.
class Rectangle
  attr_accessor :width, :height
  def initialize(width, height)
    @width = width
    @height = height
  end
  def perimeter
    puts 
  end
  def area
    puts "El perimetro es : #{width * height}"
  end
end
rectangle=Rectangle.new(14,20)
rectangle.perimeter
rectangle.area
  


#Crea la clase Playlist que para inicializarla recibe 2 argumentos: 
#name (nombre del playlist) y songs (lista de canciones).
class Playlist
  attr_reader :name
  arr_songs = []
  def initialize(name, songs)
    @name = name
    @songs = songs
    @position = 0
  end
  #Crea el método number_of_songs que regresa el 
  #número de canciones que contiene el Playlist.
  def number_of_songs
    "Numero de canciones: #{@songs.length}"
  end
  #Crea el método add_song que agrega una canción a la lista.
  def add_song(add)
    add.each do |song|
      @songs << song
    end
    p @songs
  end
  #Crea el método next_song que regresa 
  #la siguiente canción del Playlist
  def next_song
    @position += 1
      if @position > @songs.length
        @position = 1
      end
    p "La posicion de la cancion es: #{@position}"
  end
end
playlist=Playlist.new("Aldo",["adios", "bye", "sayonara"])
p playlist.number_of_songs
playlist.add_song(["goodbye", "adiue"])
#Pruebas para ver que el contador de cancion sirva
playlist.next_song
playlist.next_song
playlist.next_song
playlist.next_song
playlist.next_song
playlist.next_song
playlist.next_song
playlist.next_song