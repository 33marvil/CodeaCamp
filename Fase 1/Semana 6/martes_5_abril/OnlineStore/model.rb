#Online Store
require 'csv'
#Crear clase para crear objetos producto
#crear la clase para crear objetos persona
class User
  #Dejar acceder a los atributos 
  attr_accessor :email, :pass, :type
  def initialize(email, pass, type)
    @email = email
    @pass = pass
    @type = type
  end
  #mostrar solo el email, para que no se muestre el objeto completo
  def to_s
    @email
  end

end
#Crear la clase para crear objetos producto
class Product

  attr_accessor :product_name
  def initialize(product_name)
    @product_name = product_name
  end

  #To_s sirve para solo mostrar el elemento de un objeto que se quiera mostrar y no todo el objeto
  def to_s
    @product_name
  end
end
#crear la clase para hacer cambios en la tienda
class Store
  #Metodo para crear el csv con los productos
  def index_products(product)
    CSV.open("Products.csv", "a+") do |csv| 
      #mete los objetos producto 
      csv << [product]
    end
  end
  #Metodo para crear el csv con las personas
  def index_people(person)
    CSV.open("People.csv", "a+") do |csv| 
      #mete los objetos persona con email, contraseña y tipo de usuario
      csv << [person.email, person.pass, person.type]
    end
  end
  #Metodo para mostrar las personas
  def show_people
    #array para meter las personas
    people_list = []
     CSV.foreach('People.csv') do |row|
      #Mete cada elemento a un array
      people_list << User.new(row[0], row[1], row[2])
    end
    #regresar el array lleno
    people_list
  end
  #metodo para mostrar los porductos
  def show_products
    #array para meter los productos
    products_list = []
     CSV.foreach('Products.csv') do |row|
      #Mete cada elemento a un array
      products_list << Product.new(row[0])
    end
    #regresar el array lleno
    products_list
  end


end

