class View

  def welcome_store
    puts "Welcome to the online store: Crea tu taco, (www.creaTuTaco.com)"
    puts "1. Login\n2. Register\n3. Exit"
    gets.chomp
  end

  def welcome_admin
    puts "Welcome Administrados. Your type is admin."

  end

  def welcome_client
    puts "Welcome Client. Your type is client."

  end

  def welcome_seller
    puts "Welcome seller. Your type is seller."
  end

end