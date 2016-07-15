get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  # Deja a los usuarios crear una URL reducida y despliega una lista de URLs. 
  #Post.order("created_at DESC")
  @message = session[:message]
  @all_url = Url.all.order("id DESC")
  #p "+" * 80
  #@url = Url.last
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
    #redirect to '/'
  else
    #si no es valida manda mensaje de error
    session[:message] = "Url no valida"
    #redirige al index
    #redirect to '/'
  end
  redirect to '/'
end
#Hacer los controladores para usuarios urls y para sesiones
#hacer que la primera vista sea pedir al usuario 
#su email y pass, y abajo mostrar las urls compartidas
#por los usurios
#En cada sesion del usuario podra ver sus urls y si son 
#compartidas cuantas veces le han dado clic


