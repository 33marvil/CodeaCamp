class Employee
  # variables y su tipo de acceso
  attr_accessor :name, :email
  attr_reader :salary
  attr_accessor :deposit_account 
  #metodo para incializar las variables de instancia
  #y dar los parametros que debe recibir cada creacion de
  # un objeto de la clase employee
  def initialize(name, email, salary, deposit_account)
    @name = name
    @email = email
    @salary = salary
    @deposit_account = deposit_account
  end
  #metodos para sacar enunciados con las variables de instancia
  def to_s
    "#{name} <email: #{@email}> acct: #{hide_account}"
  end
  #Metodo para esconder los primeros 6 numeros del num de cuenta
  def hide_account
    @deposit_account.gsub(/(\d{3})-(\d{3})-/, "*****")
  end
  #Metodos para poner el coeficiente de porcentaje que ganara el employee
  def coefficient
    coefficients = { 1 => 0...1_000, 1.2 => 1_000...2_000, 1.4 => 2_000...5_000, 1.5 => 5_000..10_000 }

    coefficients.find { |coefficient, range| range.include? @salary }.first
  end

  def vacation_days
    coefficient * 7  
  end

  def bonus
    coefficient * 1000
  end

end

#Driver code

employee = Employee.new('Juan Perez', 'juan@gmail.com', 1_800, '123-456-6512')

p employee.to_s

# => "Juan Perez <email: juan@gmail.com> acct: *****6512"

str = "The employee information is #{employee}"
puts str
# # => "The employee information is Juan Perez <email: juan@gmail.com> acct: *****6512"

puts str == "The employee information is Juan Perez <email: juan@gmail.com> acct: *****6512"

puts employee.vacation_days == 8.4
puts employee.bonus == 1_200
