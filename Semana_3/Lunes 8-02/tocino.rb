#Method for print the odd numbers
def odd_indexed(arr_odd)
  #empty array
  numbers_odd = []
  #iterate a create an index to returen the value odd
  arr_odd.each_with_index do |number, index|
    #if the index is odd will appear
    if index % 2 == 0
      #introduce the numbers to array
      numbers_odd << number
    end
  end 
    #Return the array
    numbers_odd
end
#Method to have the string with more or equal to five letters
def long_strings(arr_long_string)
  #empty array
  more_five = []
  #iterate into how word and know its longitude
  arr_long_string.each do |string|
    if string.length >= 5
      #if its meets enter to the array
      more_five << string
    end
  end
  #return the array with the strings
  more_five
end
#method to return the first string to start with h
def start_with_h(arr_with_h)
   #iterate into the array and when found the first string finish
   arr_with_h.find {|letter| letter[0] == "h"}
end
#Method to capitalize how word
def capitalize_array(arr_capital)
  #Empty array
  capital = []
  #iterate into how word and capitalize it
  arr_capital.each do |word| 
    capital << word.capitalize!
  end
end
#method to group how word with the letter that start
def group_by_starting_letter(arr_letters)
  #hash that itera and create a key with the first letter
  hash = Hash.new { |k, v| k[v] = [] }
  #put the word into the hash how an array
  arr_letters.each do |word|
     hash[word[0]] << word
  end
  #return the hash full
  hash
end
#method to count the quantity of letter "r"
def number_of_r(str)
  #coun the letters "r" in the string
  str.count("r")
end

# Pruebas

p odd_indexed(["uno", "dos", "tres", "cuatro", "cinco"]) == ["uno", "tres", "cinco"]
p long_strings(["rojo", "morado", "azul", "negro", "blanco", "naranja"]) == ["morado", "negro", "blanco", "naranja"]
p start_with_h(["manzana", "naranja", "sandia", "higo", "melon", "platano"]) == "higo"
p capitalize_array(["manuel", "juan", "rodrigo", "ana", "paola"]) == ["Manuel", "Juan", "Rodrigo", "Ana", "Paola"]
p group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
p number_of_r("ferrocarril") == 4