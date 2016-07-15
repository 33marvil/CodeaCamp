#Decirle a ruby que usara 2 archivos de los cuales agarrara elementos
require_relative 'model'
require_relative 'view'
#class controller para manipular el model y el view
class Controller
  #Metodo que inicializa las instancias de las vistas y el modelo
  def initialize
    @store = Store.new
    @view = View.new
    #cada vez que se llame correr el metodo login
    login
  end
  #metodo para logear a la tienda
  def login
    #guarda el valor de lo que el usuario inserte
    election = @view.welcome_store
    case election[0]
      #si es 1
      when "1"
        #muestra la pantalla de login y compara en el array para ver si el usuario existe
        data_login = @view.login
        comparation_user(data_login)
      #Si es 2 corre el metodo para registrase 
      when "2"
        #muestra la pantalla para registrarse y guarda al usuario en el csv y muestra la pantalla de logeo
        data = @view.register
        @view.login
        @store.index_people(User.new(data[0], data[1], data[2]))
        comparation_user(data)
      #si es 3
      when "3"
        #muestra mensaje de salida
        @view.exit
        #De lo contrario
      else
        #muestra mensaje de error y vuelve a llamar al metodo login
        @view.error_write
        login
    end
  end
  #metodo para saber si el usuario existe
  def comparation_user(array_data)
    #guarda el array de las personas en la base de datos
    persons = @store.show_people
    #Dar status en false para que posteriormente cambie el valor
    status = false
    #Recorrer en el array
    persons.each do |person|
      #si los valores que da la persona existe en el csv
      if person.email == array_data[0] && person.pass == array_data[1] 
        #revisa de que tipo es
        if person.type == "1"
          #si es 1 muestra el menu de admin
          request = "yes" 
          #correra hasta que el usuario no quiera hacer nada mas
          while request != "no"
            res = admin(@view.admin_menu)
            if res == "1"
              login
              request = "no"
              break
            end
            #pregunta si quiere hacer algo si dice que no se sale
            request = @view.ask
          end
          #si el usuario es de tipo 2
        elsif person.type == "2"
          #hace un ciclo y pregunta si quiere hacer otra accion y rompe el ciclo 
          request = "yes"
          while request != "no"
            res = user(@view.user_menu)
            if res == "1"
              #rompe si el usuario presiona logout
              login
              request = "no"
              break
            end
            request = @view.ask
          end
        #si el usuario es de tipo 3
        elsif person.type == "3"
          #hace un ciclo y pregunta si quiere hacer otra accion, y rompe cuando no se quiera hacer una accion
          request = "yes"
          while request != "no"
            res = seller(@view.seller_menu)
            if res == "1"
              #rompe si el usuario presiona logout
              login
              request = "no"
              break
            end
            request = @view.ask
          end
        end
        #cambia el status a true
        status = true
      else
        #deja el estatus en false porque no encontro al usuario
        status == false
      end
    end
    #si el status es false muestra mensaje y pide que se logee de nuevo
    if status == false
      @view.unvalid
      login
    end
  end
  #metodo par las opciones del admin
  def admin(option)
    #variable para guardar el valor de la respuesta
    request = ""
    #depende de que opcion de el usuario
    case option
    when "1" 
      #muestra mensaje de salida y reasigna valor
      @view.exit
      request = "1"
    when "2"
      #muestra los productos y reasigna valor a request
      @store.show_products.each{|pro| puts pro}
      request = "2"
    when "3"
      #Pide nombre de nuevo producto y lo guarda en el csv y reasigna valor de request
      @store.index_products(@view.insert_product)
      request = "3"
    when "4"
      #muestra las personas y reasigna valor a request
      @store.show_people.each{|email, pass, type| puts email}
      request = "4"
    end
    #regresa request con el valor que haya tenido
    request
  end
  #metodo para las opciones de usuario
  def user(option)
    #variable para guardar el valor de la respuesta
    request = ""
    #depende de que opcion de el usuario
    case option
    when "1"
      #muestra mensaje de salida y reasigna valor a request
      @view.exit
      request = "1"
    when "2"
      #muestra los productos y reasigna valor a request
      @store.show_products.each{|pro| puts pro}
      request = "2"
    end
    #regresa request con el valor que haya tomado
    request
  end
  #Metodo para mostrar las opciones del seller
  def seller(option)
    #variable para guardar el valor de la respuesta
    request = ""
    #depende de que opcion de el usuario
    case option
    when "1"
      #muestra mensaje de salida y reasigna valor a request
      @view.exit
      request = "1"
    when "2"
      #permite ingresar producto nuevo y cambia valor a request
      @view.insert_product
      request = "2" 
    end
    #regresa request con nuevo valor
    request
  end

end
#Correr el controller
Controller.new