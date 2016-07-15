#Raiz principal de la pagina
get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  # Deja a los usuarios crear una URL reducida y despliega una lista de URLs. 
  @message_user = session[:message_user]
  @message = session[:message]
  @all_url = Url.all.order("id DESC")
  erb :index
end

# e.g., /q6bda
get '/:short_url' do
  #guarda lo que se obtenga en el link
  url_short = params[:short_url]
  #guarda el objeto encontrado en una variable
  obj_url = Url.find_by(short_url: url_short) 
  #aumenta en 1 el contador de esa variable
  obj_url.clock_coun += rand(1..45)
  #guarda los cambios echos a el objeto
  obj_url.save
  #redirige a la url que el usuario ingreso al darle clic
  redirect to "#{obj_url.long_url}"
end

post '/urls' do
  # crea una nueva Url
  @url = params[:url]
  #revisa que la url sea valida
  url_long = Url.validation_url(@url)
  if url_long == true
    #si es valida crea el objeto
    @new_url = Url.create(long_url: @url)
    # p "*" * 80
    # p @new_url
    #redirect to '/'
  else
    #si no es valida manda mensaje de error
    session[:message_user] = "Url no valida"
    #redirige al index
    #redirect to '/prueba'
  end
  redirect to '/'
end

#Metodo para obtener url's por usuario
post '/url_user' do
  #Guarda los parametros que de el formulario
  url_user = params[:url]
  #Valida si la url es valida
  url_long_user = Url.validation_url(url_user)
  #si es valida
  if url_long_user
    #Guarda el id del usuario
    @user_id = session[:user_id]
    #Crea una nueva url con el id del usuario para que solo el las pueda ver
    @new_url = Url.create(user_id: @user_id,long_url: url_user)
  #De lo contrario
  else
    #Muestra un mensaje de que la url no es valida
    session[:message_user] = "Url no valida"
  end
  #Redirije al login
  redirect to '/login'
end
