#Redirigir a vista si se hace render
enable :sessions
get '/' do
  #guarda el mensaje que se ejecute si trae algo y lo guarda en instancia
  #Para poder mostrarlo
  @message = session[:message]
  erb :index
end

#Metodo para mandar a la pagina secreta si el usuario existe
get '/secretPage' do
  @name = session[:name]
  erb :secretPage
end

#Este metodo cerrara la sesiòn para que no se cree una lista de seciones grandes
get '/logout' do
  session.clear
  redirect to '/'
end

#Metodo para mandar a la viste register
get '/register' do
  erb :register
end

#Metodo por si se logea el usuario
post '/login' do
  #guarda los parametros que el usuario ingrese
  @user_email = params[:useremail]
  @user_pass = params[:userpass]
  #Crea un objeto con los valores que el usuario inserto
  user = User.authenticate(@user_email, @user_pass)
  #Si el usuario existe 
  if user
    #Crea una session con su nombre
    session[:name] = user.name
    #y redirige a secretPage
    redirect to '/secretPage'
  #Si no existe regresa a el index rendereado
  else
    #Crea una sesión para el usuario que este conectado
    session[:message] = "No esta registrado"
    #redirige a el index
    redirect to '/'
  end
end

#Metodo para crear un usuario nuevo
post '/createuser' do
  #guarda cada parametro en una variable
  user_email = params[:useremail]
  user_pass = params[:userpass]
  user_name = params[:username]
  #Crea un objeto usuario con los parametros que el usuario dio
  User.create(name: "#{user_name}", email: "#{user_email}", password: "#{user_pass}")
  erb :index
end
#Sinatra flash. para mostrar mensajes 

