get '/' do
  @abuelita = params[:abuelita]
  erb :index
  # Visita app/views/index.erb
end
# get '/index.erb' do
#   "Hello World"
# end

post '/abuelita' do
  user_input = params[:user_input]
  #p user_input
  if user_input.include? "BYE"
    # redirect to('/?abuelita=adios hijito')
    "adios hijito"
  elsif user_input == user_input.upcase
    # redirect to('/?abuelita=No, NO DESDE 1983')
    "Hola Mundo"
  else
    # redirect to('/?abuelita=HUH?, NO TE ESCUCHO HIJO!')
    "Ola k ase"
  end    
end


# def deaf_grandma
#   puts "saluda a tu abuela"
#   saludo = gets.chomp
#   if saludo == "BYE TQM"
#     puts "adios hijito"
#   elsif saludo == saludo.upcase
#     puts "NO, NO DESDE 1983"
#   else 
#     puts "HUH?! NO TE ESCUCHO, HIJO!"
#   end
# end