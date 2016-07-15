class User < ActiveRecord::Base
  # Remember to create a migration!
  #Validaciones para que el email sea unico y que la contrase 
  #sea requerida
  validates :email, uniqueness: true
  validates :email, :password, presence: true
  has_many :urls, dependent: :destroy

  #Metodo para ver si un usuario esta en la base de datos
  def self.authenticate(email, password)
    # si el email y el password corresponden a un usuario valido, regresa el usuario
    # de otra manera regresa nil
    #Crear objeto donde se guardara el usuario por el email que 
    #Se haya pasado
    user = User.find_by(email: email, password: password)
    #si el usuario existe
    if user 
      #Si la contraseña que pasan de parametro es igual a la del      
      #regresa el objeto
      #regresa el objeto
        user
      #end
    else
        #De lo contrario regresa false y no deja entrar
        false
    end
  end

end
