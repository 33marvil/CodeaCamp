#Metodo que cambiara el valor del string
def method_destructive(string)
  puts "Metodo destructivo"
  puts "Hola #{string}"
  #El regex de el gsub capitalizara cada palabra de el string 
  #Y modificara el valor del string
  puts "Tu nombre debe ser escrito asi: #{string.gsub!(/\w+/, &:capitalize)}"
  puts "Asi: #{string}, esta bien escrito"
  puts "Adios"
end
#Metodo que no cambiara el valor del string
def method_no_destructive(string)
  puts "Metodo NO destructivo"
  puts "Hola #{string}"
  #El regex de el gsub capitalizara cada palabra de el string 
  #Y NO modificara el valor del string
  puts "Debes escribir tu nombre asi: #{string.gsub(/\w+/, &:capitalize)}"
  puts "No lo escribas asi: #{string}"
  puts "Adios"
end
#Drive code
method_destructive("lauRa RaMIRez GonzalEZ")
method_no_destructive("juan lopez RODriGuez")
