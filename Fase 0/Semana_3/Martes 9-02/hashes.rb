
def group_by_starting_letter(arr_letters)
  hash = Hash.new #{ |k, v| k[v] = [] }
  arr_letters.each do |word|
     hash[word[0]] << word
    if hash[word[0]] = word[0]
      p arr << word if word[0] = hash[word[0]]
      p word
      p hash[word[0]] = [arr]

    end
  end 
  p hash
end


# group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco"]) == {"a"=>["arbol", "amarillo", "angel"], "b"=>["burro", "barco"]}
group_by_starting_letter(["arbol", "amarillo", "angel", "burro", "barco", "carlos", "ernesto"]) 