#Metodo cada vez que cree una nueva url
get '/login' do
  @name = session[:name]
  @message_user = session[:message_user]
  @id_user = session[:user_id]
  @all_url_user = User.find(@id_user).urls.order("id DESC")
  erb :login
end
#Metodo para salir de la secion actual
get '/logout' do
  session.clear
  redirect to '/'
end
#Metodo para ingresar a la sesión si es que el usuario existe
post '/login' do
  @email = params[:email]
  @pass = params[:pass]
  #Llama al metodo para saber si el usuario existe
  login = User.authenticate(@email, @pass)
  #si existe
  if login
    #Crea una session con su nombre y si id
    session[:name] = login.name
    session[:user_id] = login.id

    #Y redirije a la pagina de login
    redirect to '/login'
  else
    #si no existe redirige al index
    session[:message] = "No existe el usuario"
    redirect to '/'
  end
end

