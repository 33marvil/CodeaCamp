 #Tablas de multiplicar
def multiplication_tables (number)#Creacion del metodo
  (1..number).each do |multiplicar|#Acciones del metodo
    (1..10).each do |resultado| 
      print "#{resultado *= multiplicar}\t"  #Imprime resultado de las filas y columnas
    end#end of each of resultado
    puts
  end#end of each of multiplicar
end#end of multiplication_tables

#Pruebas
multiplication_tables (5)
multiplication_tables (7) 