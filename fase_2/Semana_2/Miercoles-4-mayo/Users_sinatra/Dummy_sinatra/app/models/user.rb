class User < ActiveRecord::Base
    # ej. User.authenticate('fernando@codea.mx', 'qwerty')
  #Validaciones para que el email sea unico y que la contrase 
  #sea requerida
  validates :email, uniqueness: true
  validates :email, :password, presence: true
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
    #objeto 
      #if user.password == password
        #regresa el objeto
        user
      #end
    else
        #De lo contrario regresa false y no deja entrar
        false
    end
  end

end