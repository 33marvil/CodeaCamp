#class para crear las vistas
class View
  #metodo para dar la bienvenida a la tienda
  def welcome_store
    puts "Welcome to the online store: Crea tu taco, (www.creaTuTaco.com)"
    select_option
    puts "1. Login\n2. Register\n3. Exit"
    #regresa lo que el usuario inserte
    gets.chomp
  end
  #Muestra ventana para logearse
  def login
    data = []
    puts "Introduce your email"
    email = gets.chomp
    data << email
    puts "Introduce the password"
    pass = gets.chomp 
    #guara los valores que el usuario dio y los guara en un array
    data << pass
  end
  #metodo para decirle que debe seleccionar un numero
  def select_option
    puts "Select option number:"
  end
  #mostrar el menu del admin y lo que puede hacer
  def admin_menu
    puts "Welcome. Your type is: Admin"
    select_option
    puts "1. Logout\n2. Products index\n3. Create Product\t4. Users index"
    #regresa un valor que se guardara
    gets.chomp
  end
  #mostrar menu del user y regresa un valor del cliente
  def user_menu
    puts "Welcome. Your type is: User"
    select_option
    puts "1. Logout\n2. Products list"
    gets.chomp
  end
  #mostrar el menu del seller y regresar un valor que da el seller
  def seller_menu
    puts "Welcome. Your type is: Seller"
    select_option
    puts "1. Logout\n2. Offer product"
    gets.chomp
  end
  #mostrar ventana para registrarse
  def register
    data = []
    puts "What's your email?"
    email = gets.chomp
    data << email
    puts "Introduce the password"
    pass = gets.chomp
    data << pass
    puts "¿What kind of user are you?\n1. Admin\n2. Client\n3. Seller"
    type = gets.chomp.to_i
    #pregunta los datos a el usuario los guarda en un array y regresa el array con los datos
    data << type
  end
  #mostrar ventana para ingresar el nombre del producto y regresa el nombre del producto
  def insert_product
    puts "What's the name of the product?"
    gets.chomp
  end
  #Mostrar mensaje de salida
  def exit
    puts "Thanks for visit us"
  end
  #mostrar mensaje de error
  def error_write
    puts "You didn't write anithing"
  end
  #Mostrar mensaje de unvalid user
  def unvalid
    puts "Unvalid username"
    puts
  end
  #mostrar pregunta para saber si el usuario quiere continuar y regresa la respuesta del usuario
  def ask
    puts "Do you want to do another action?\nYes\nNo."
    gets.chomp
  end

end