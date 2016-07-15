class Course
  #Estos sirve para poder ver y modificar el valor 
  attr_accessor :course_name
  #solo sirve para modificar el valor
  attr_writer :add_student
  #solo sirve para ver el valor
  attr_reader :students
  #este metodo debe tener iniciado los valores que se podran modificar
  def initialize(name)
    @course_name  = name
    @students   = []
    #@add_student = student
  end

  # def course_name
  #   @course_name
  # end

  # def course_name=(new_name)
  #   @course_name = new_name
  # end
  #Metodo que guarda cada estudiante nuevo dentro de el array @students
  def add_student(student)
    @students << student
  end

  # def students
  #   @students
  # end
end


class Student
  #metodo para poder ver y modificar el name, last name y el campus
  attr_accessor :name, :last_name, :campus
  #metodo para ver el id y el nuevo id
  attr_reader :id, :new_id
  @@id = 0
  #metodo para inicializar los valores y los parametros que debera recivir 
  #cada instancia de la clase studen
  def initialize(name, last_name, campus)
    @name     = name
    @last_name = last_name
    @campus = campus
    @id       = new_id
  end

  # def new_id
  #   @@id += 1
  # end

  # def name
  #   @name
  # end

  # def name=(new_name)
  #   @name = new_name
  # end

  # def last_name
  #   @last_name
  # end

  # def last_name=(new_last_name)
  #   @last_name = new_last_name
  # end

  # def campus
  #   @campus
  # end

  # def campus=(new_campus)
  #   @campus = new_campus
  # end

  # def id
  #   @id
  # end

end


# NO MODIFICAR

# Driver Code ==============================================


math = Course.new("Math")

fernando = Student.new("Fernando","Romero", "Guadalajara")

math.add_student(fernando)

puts ("#{math.course_name} - #{math.students.first.name} #{math.students.first.last_name}: #{math.students.first.campus}") == "Math - Fernando Romero: Guadalajara"
puts math.respond_to?(:students=) == false
puts math.respond_to?(:students) == true
puts math.respond_to?(:add_student) == true
puts math.respond_to?(:course_name=) == true

fernando.name = "Not Rodrigo"
fernando.last_name = "GRRR"
fernando.campus = "Monterrey"

math.course_name = "Mathematics"

puts ("#{math.course_name} - #{math.students.first.name} #{math.students.first.last_name}: #{math.students.first.campus}") == "Mathematics - Not Rodrigo GRRR: Monterrey"
puts fernando.respond_to?(:id=) == false
puts fernando.respond_to?(:id) == true
puts fernando.respond_to?(:name) == true
puts fernando.respond_to?(:last_name=) == true