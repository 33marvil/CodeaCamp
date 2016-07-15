#Practica calificaciones
def average_grade (calificaciones)#Creacion del metodo
  sum = 0 #Creacion del contador
  calificaciones.each do |num| #decir que hacer con ese contador  
    sum += num  #Sumar los valores dentro de el array
  end # end of each
  sum.to_f / arr1.length #Regresa el promedio
end 
# Pruebas
p average_grade([8, 8, 7, 6, 9]) == 7.6
p average_grade([5, 5, 5, 8, 8, 7, 7, 7]) == 6.5
p average_grade([5, 5, 5, 8, 8, 7, 7, 2]) == 5.875

