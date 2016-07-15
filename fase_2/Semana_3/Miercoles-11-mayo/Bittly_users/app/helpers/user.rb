#Los helpers ayudan a hacer mas faciles las validaciones de las sessions
helpers do
  # Esto deberá de regresar al usuario con una sesión actual si es que existe 
  def current_user
    #Si la session y el id del usuario existen 
    if session[:name] && session[:user_id]
      #Guarda el id y busca todas las cosas de ese id
      user_id = session[:user_id]
      @current_user = User.find(user_id)
    else
      #Si no existe regresa false
      false
    end
  end

  # Regresa true si el current_user existe y false de otra manera 
  def logged_in?
    #Dependiendo de lo que regrese current_user
    if current_user
      #Regresa true si el usuario existe
      true
    else
      #Si no existe regresa false
      false
    end
  end

end