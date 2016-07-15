#Metodo canonical para darle el mismo formato a todas las palabras
#y saber si son anagramas
def canonical(word)
  word.downcase!
  word.chars.sort
end
# p canonical("roma")
# p canonical("omar")
#Metodo para saber si una palabra es anagrama de otra
def are_anagrams?(word1, word2)
  #si las palabras son anagramas regresa true de lo contrario regresa false
  if canonical(word1) == canonical(word2) then true else false end
end

#pruebas are_anagrams?

p are_anagrams?("hola", "aloh")
p are_anagrams?("hola", "mundo")

#Parte de mas dificultad
#Metodo para saber que palabras de un diccionario(array) son anagramas de la palabra que nos dan
def anagrams_for(word, array)
  #Pasar la palabra a minuscula para que sea igual
  word.downcase!
  #Arreglo vacio para meter los que sean anagramas
  arr = []
  #Separar la palabra en su forma canonica
  cano = word.chars.sort
  #iterar dentro de cada palabra del array
  array.each do |dicc|
    #crear una variable donde pase la palabra del array a su forma canonica
    word_cano = dicc.chars.sort
    #si la palabra es igual a la palabra del array
    #Ya las 2 en su forma canonica
    if cano == word_cano
      #mete la palabra a el array
      arr << dicc
    #De lo contrario deja el array igual
    else
       arr
    end
  end
  #Regresar el array lleno si habia palabras
  #o vacio si no las encontro
  arr
end
 
p anagrams_for("amor",["omar","roma","atoles","mora","hellow"])
p anagrams_for("bota",["omar","roma","atoles","mora","hellow"])

