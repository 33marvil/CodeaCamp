#Class user que hereda de Activerrecord
class User < ActiveRecord::Base
# Implementa los métodos y validaciones de tu modelo aquí. 
  #Validacion de que el email es unico
  validates :email, :uniqueness => true
   #Regexp para que el email cumpla los requisitos
  VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  #validacion de que el email cumple su formato
  validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }
  #validacion de que el usuario es mayor de edad
  validates_inclusion_of :birthday, :in  => Date.new(1901)..Time.now.years_ago(18).to_date, :message => 'Abrete enano'
  #validacion de que el telefono es mayor a 10 digitos
  validate :validatePhone?
  #regresar nombre
  def name
    "#{first_name} #{last_name}"
  end
  #regresar la edad
  def age
    #obtener el añño de la fecha de ahorita y el de la fecha de lo que este en birthday
    DateTime.now.year - birthday.year
  end
  #Metodo para validar que el numero es mayor a 10 y mandar mensaje si no
  def validatePhone?
    #contador en 0
    counter = 0
    #iterar dentro de cada elemento del phone
    phone.each_char do |numero|
      #si el elemento es un digito
      if numero.match(/\d/)
        #aumenta el contador
        counter += 1
      end
    end
    #si el contador es menor a 10 manda mensaje de error
    if counter <= 10
      #error cada vez que el metodo no se cumpla
      errors.add(:phone, 'Escribe un numero bien')
    end
  end

end
