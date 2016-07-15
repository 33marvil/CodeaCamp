#Ejercicio Metodos
#El metodo se llama sum_words
=begin 
def sum_words(parameter1, parameter2)#Recibe dos parametros de tipo string
  "#{parameter1} #{parameter2}"#Accion que ejecutara el metodo
end#Fin metodo

# Pruebas
p sum_words("Hola ", "Como estas?") == "Hola  Como estas?"
#Impresion en pantalla del metodo
sum_words("Metodo", "Aldo")#imprimira en pantalla los Strings escritos
sum_words("Hellow", "My horse")
sum_words("Perro", "guau guau")
#fin ejercicio Metodos
=end
#Detectar Substring
#Creacion del metodo
def shipping (address) #method that received 1 parameter
  if address.include? "Mexico" #conditional verifying that includes Mexico
    "Order received"
  else
    "We only ship orders to Mexico"
  end
end#end of method shipping

# Pruebas

p shipping('Insurgentes Sur 8932, Alvaro Obregon, Mexico') == "Order received"
p shipping('Geary Blvd 3320, San Francisco, Estados Unidos') == "We only ship orders to Mexico"
 #Con control shit + 7 se comenta/descomenta lo que este seleccion


