#Creacion de un array de arrays con el nombre del alumno 
#y su calificacion
students = [[["Eliezer", 7], ["Mariam", 7], ["Deborah", 10], ["Harley", 7]],
 [["D'angelo", 10], ["Brittany", 8], ["Hubert", 7], ["Erling", 9]],
 [["Bradford", 7], ["Theodora", 10], ["Casandra", 9], ["Lindsay", 8]],
 [["Hilma", 10], ["Lina", 10], ["Isabell", 8], ["Urban", 9]]]
#Creacion del metodo best_students que recibe 1 parametro de 
#array de arrays
def best_students(students)
  #creacion de un array vacio donde entraran los best_students
  best_students = []
  #Creacion de variables x,y de tipo integer
  #que se inicializan en 0
  x, y        = 0, 0
  #ciclo while que correra siempre que la variable y
  #sea menor a la longitud del parametro students
   while y < students.length
    #creacion de un array que sera igual a "y" y "x"
    current_student  = students[y][x]
    #Condicion if para comparar el segundo valor(calificacion)
    # de cada array dentro del array
    if current_student[1] == 10
      #Empuja el primer argumento de cada array dentro del array
      #(nombres de los estudiantes) cuya calificacion sea 
      #igual a 10
      best_students.push(current_student[0])
    #Termina if
    end
    if x == (students[y].length - 1)
      x = 0
      y += 1
    else
      x += 1
    #end if
    end
  #End While
  end
  #Regresa el array de best students 
  #ya con los estudiantes que cumplieron la condicion
  best_students
end 

p best_students(students) #== ["Deborah","D'angelo","Theodora","Hilma","Lina"]