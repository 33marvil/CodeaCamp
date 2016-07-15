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

p are_anagrams?("hola", "aloh")
p are_anagrams?("hola", "mundo")