 #metodo para saber si el numero de cuenta existe
 def found_number(string)
    #Si el numero de cuenta existe regresa true
    if string.match(/(\d{4})-(\d{3})-(\d{3})$/)  
     true
   #si no existe regresa nil
   else
     "Not valid number"
   end
 end
#Pruebas found_number
p found_number ("1234-123-123") 
p found_number ("1234-123-123333") 
p found_number ("1234-123") 
p found_number ("1234-123-abc") 

 #Metodo para saber si el numero de cuenta existe
 def exist_number(string)
   #Si el numero existe regresa el numero
   if /(\d{4})-(\d{3})-(\d{3})$/ =~ string 
     p string 
   #Si el numero no existe regresa nil
   else
     nil
   end
 end

# #Pruebas exist_number
p exist_number("1234-123-123")
p exist_number("1234-123")
p exist_number("1234-123-abc")

# #Metodo para esconder los primeros 7 caracteres de un numero
def hidden_number(string)
#   #Buscara el formato dado despues del gsub
    #y lo cambiara por lo que quieras
   string.gsub(/(\d{4})-(\d{3})/, "XXXX-XXX")
 end
# #Pruebas hidden_number
p hidden_number("1234-123-123")
p hidden_number("1234-123-123") == "XXXX-XXX-123"

#-----------------

#Metodo que recibe un string y si en ese se encuentra un numero
#Metera el numero dentro de un array
def array_number(string)

  string.scan(/\d{4}-\d{3}-\d{3}/)
      
end


p array_number("cuenta1: 1234-123-563 cuenta2: 1234-123-123") #== ["1234-123-123"]
p array_number("cuenta1: cuenta2: 1234-123-abc") 


#Metodo para cambiar los puntos por guiones o para poner los guiones
#si el usuario no los puso
def change_symbols(string)
  #Si el string no tiene puntos 
  if string.length == 10 
    #busca este formato y lo cambia y le pone los puntos
    string.gsub(/(\d{4})(\d{3})(\d{3})$/, '\1-\2-\3')
  #si el string tiene puntos en vez de guiones
  elsif string.length == 12
    #compara el string con los puntos y los cambio por guiones
    string.gsub(/(\d{4}).(\d{3}).(\d{3})$/, '\1-\2-\3')
  #De lo contrario
  else
    #regresa el mismo string y un mensaje de que no es valido
    string + " no valid"
  end  
end

p change_symbols("1237659810")
p change_symbols("1237.659.810")
p change_symbols("12376598")

