get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

get '/iniciar' do
  user_name = sessions[:username]
  user_pass = sessions[:userpass]
  erb :index
end

get '/register' do
  erb :register
end
