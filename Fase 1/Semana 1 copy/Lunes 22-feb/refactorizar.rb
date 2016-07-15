# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
    # word_reverse = string.reverse
    # swapped_word = word_reverse.swapcase
    # encrypted_word = swapped_word.gsub(/[aeio]/,"*")
    encrypted_word = string.reverse.swapcase.gsub(/[aeio]/,"*")
    return encrypted_word  
end


# # Descompón el método en tres métodos nuevos para hacer más comprensible el código
# # Lee el método y comprende que hace y que resultado regresa 

def max_letter_frequency_per_word(sentence)
    sentence.split.select{|word| word.length > 3}.map{ |w| w.count("e") }.max
end
#metodo para saber que palabra es mas grande que el numero que el usuario inserte
def words_longer_than(array,num)
  array.select{|word| word.length > num}
end
#metodo que cuenta el numero de letras en un arreglo
#el usuario puede insertar que letra quiere buscar
def letter_per_word(array,letter)
  array.map{ |w| w.count(letter) }
end
#Metodo para saber que numero del arreglo es mas grande que el numero escrito
def numbers_larger_than(num_array, num)
  #itera en cada numero y si es mayor que el numero lo imprime
  num_array.each do |number|
    if number > num
      p number
    end
  end
end

# # Estas son pruebas que no debes de modificar 
# # Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5