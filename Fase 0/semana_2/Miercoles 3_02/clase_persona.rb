#Creacion clase persona
class Person
  attr_accessor :first_name, :last_name, :email
  #metodo para inicializar los valores que reciba
  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end
  #Metodo para regresar el nombre
  def name
    puts "#{first_name} #{last_name}"
  end
  #Metodo para regresar la informacion de la persona
  def information
    puts "Name: #{first_name} #{last_name}"
    puts "Email: #{email}"
  end

end
#Instanciar la variable y crear el objeto
person = Person.new('Daniel', 'Garcia', 'daniel@mail.com')
person.name
# => Daniel Garcia
person.information
# => Name: Daniel Garcia
# => Email: daniel@mail.com
person2 = Person.new('Aldo', 'Márquez', 'aldo.619_@hotmail.com')
person2.name
person2.information