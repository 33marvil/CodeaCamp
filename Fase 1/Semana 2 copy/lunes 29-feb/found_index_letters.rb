#Method to know in wich index of the word is the select letter
def global_linear_search(object, array)
  #empty array
  arr = []
  #for to know in wich index is the letter
  for index in 0..array.length
    #if the letter is in the string
    if array[index] == object
      #introduce the index to an array
      arr << index
    #if the letter isn't return the array empty
    else
      arr
    end
  end
  #return array to know the result
  arr
end

#Pruebas
arr = "entretenerse".split('')

p global_linear_search("e", arr)
# => [0, 4, 6, 8, 11]
p global_linear_search("b", arr)
# => []
