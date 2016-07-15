#Method to know in wich index is the number chosed
def linear_search(object, array)
  #for to know if the number is in the array
  for index in 0..array.length-1
    #if the number is in the array
    if array[index] == object
      #return the index of that number
      p index
      return 
    end
  end
  #if the number isn't in the array print nil
  p nil
end

#Pruebas
random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
linear_search(5, random_numbers)
# => 4
linear_search(29, random_numbers)
# => nil
linear_search(4, random_numbers)
# => 0
linear_search(11, random_numbers)
# =>7
linear_search(7, random_numbers)
# => nil

