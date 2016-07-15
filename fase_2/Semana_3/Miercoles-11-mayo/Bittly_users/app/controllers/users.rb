#Metodo para mandar a la pagina a crear el usuario
get '/user/create_user' do
  erb :createUser
end

#Metodo para guardar los parametros del nuevo usuario y guardarlos
#En la base de datos
post '/new_user' do
  #Se puede simplificar si se manda los parametros directamente:
  #User.create(name: params(:nombre), email: params[:email], password: params[:password])
  nombre = params[:nombre]
  email = params[:email]
  password = params[:password]
  User.create(name: nombre, email: email, password: password)
  redirect to '/' 
end

